# a simple loader for Atari ST gemdos programs
# It detects the file header, creates TEXT/DATA/BSS segments,
# loads the data, relocates the addresses and even applies a symbol table,
# if it exists within the file

# To install: place this python script inside the 'loaders' directory
# of IDA. Tested with IDA Pro 7.2 in a Mac, but it should work on any
# platform.

import struct
import ctypes
import sys

uint8  = ctypes.c_ubyte
char   = ctypes.c_char
uint32 = ctypes.c_uint
uint64 = ctypes.c_uint64
uint16 = ctypes.c_ushort
ushort = uint16

# Atari ST Pexec() header
class gemdos_executable_header(ctypes.BigEndianStructure):
    _pack_ = 1
    _fields_ = [
        ("PRG_magic", uint16), # This WORD contains the magic value (0x601A).
        ("PRG_tsize", uint32), # This LONG contains the size of the TEXT segment in bytes.
        ("PRG_dsize", uint32), # This LONG contains the size of the DATA segment in bytes.
        ("PRG_bsize", uint32), # This LONG contains the size of the BSS segment in bytes.
        ("PRG_ssize", uint32), # This LONG contains the size of the symbol table in bytes.
        ("PRG_res1",  uint32), # This LONG is unused and is currently reserved.
        ("PRGFLAGS",  uint32), # This LONG contains flags which define certain process characteristics (as defined below).
        ("ABSFLAG",   uint16), # This WORD flag should be non-zero to indicate that the program has no fixups or
                                 # 0 to indicate it does. Since some versions of TOS handle files with this value
                                 # being non-zero incorrectly, it is better to represent a program having no fixups
                                 # with 0 here and placing a 0 longword as the fixup offset.
    ]

# PRGFLAGS
# PF_FASTLOAD    0   If set, clear only the BSS area on program load, otherwise clear the entire heap
# PF_TTRAMLOAD   1   If set, the program may be loaded into alternative RAM, otherwise it must be loaded into standard RAM.
# PF_TTRAMMEM    2   If set, the program's Malloc() requests may be satisfied from alternative RAM, otherwise they must be satisfied from standard RAM.

# Atari TOS image header
class tos_image_header(ctypes.BigEndianStructure):
    _pack_ = 1
    _fields_ = [
        ("branch", uint16), # branch to reset handler
        ("os_version", uint16), # OS version number
        ("reseth", uint32), # -> system reset handler
        ("os_beg", uint32), # -> base of OS
        ("os_end", uint32), # -> end of OS memory usage
        ("os_exec", uint32), # -> default shell
        ("os_magic", uint32), # -> GEM magic (or NULL)
        ("os_date", uint32), # date the system was built
        ("os_conf", uint16), # configuration bits
        ("os_dosdate", uint16), # DOS-format date the system was built
    ]


AtariSTBaseAddress = 0x10000 # the application is loaded to this address
AtariSTProgramName = "Atari ST Program"
AtariSTTOSImageName = "Atari ST TOS Image"

# -----------------------------------------------------------------------

def read_struct(li, struct):
    s = struct()
    slen = ctypes.sizeof(s)
    bytes = li.read(slen)
    fit = min(len(bytes), slen)
    ctypes.memmove(ctypes.addressof(s), bytes, fit)
    return s

base_addr = 0x10000

li = open('./auto/power.prg','rb')
li.seek(0)
header = read_struct(li, gemdos_executable_header)
if header.PRG_magic == 0x601A:
	li.seek(0, 2)
	filesize = li.tell()
	li.seek(0)
	print('FILESIZE 0x%lx' % filesize)
	print('TEXT 0x%lx' % header.PRG_tsize)
	print('DATA 0x%lx' % header.PRG_dsize)
	print('BSS 0x%lx' % header.PRG_bsize)
	print('SYMBOLS 0x%lx' % header.PRG_ssize)
	if header.PRG_res1:
		print('RES1 0x%lx' % header.PRG_res1)
	if header.PRGFLAGS:
		flagsList = []
		if header.PRGFLAGS & 0x01:
			flagsList.append('Fastload')
		if header.PRGFLAGS & 0x02:
			flagsList.append('altRAM')
		if header.PRGFLAGS & 0x04:
			flagsList.append('altRAMMalloc')
		if (header.PRGFLAGS & 0xf0) == 0:
			flagsList.append('protPrivate')
		if (header.PRGFLAGS & 0xf0) == 1:
			flagsList.append('protGlobal')
		if (header.PRGFLAGS & 0xf0) == 2:
			flagsList.append('protSuper')
		if (header.PRGFLAGS & 0xf0) == 3:
			flagsList.append('protReadOnly')
		if header.PRGFLAGS & (1 << 12):
			flagsList.append('sharedTEXT')
		if (header.PRGFLAGS >> 28) != 0:
			flagsList.append('TPA(%dkb)' % ((header.PRGFLAGS >> 28) * 128))
		print('FLAGS %s' % ','.join(flagsList))
	if header.ABSFLAG != 0:
		print('ABSFLAG 0x%x' % header.ABSFLAG)
	print('-' * 40)
	if header.PRG_tsize:
		print('TEXT Segment: 0x%lx/0x%lx bytes' % (ctypes.sizeof(gemdos_executable_header),header.PRG_tsize))
	if header.PRG_dsize:
		print('DATA Segment: 0x%lx/0x%lx bytes' % (ctypes.sizeof(gemdos_executable_header)+header.PRG_tsize, header.PRG_dsize))
	if header.PRG_bsize:
		print('BSS Segment: -/0x%lx bytes' % (header.PRG_bsize))

	if header.ABSFLAG == 0:
		relocDataOffset = ctypes.sizeof(gemdos_executable_header) + header.PRG_tsize + header.PRG_dsize + header.PRG_ssize
		print('RELOCATION DATA: 0x%lx/0x%lx bytes' % (relocDataOffset,filesize - relocDataOffset))
		li.seek(relocDataOffset)
		relocData = li.read(filesize - relocDataOffset)
		roffset = 4
		rea = struct.unpack('>I', relocData[:roffset])[0]
		if rea != 0:
			rea = rea + base_addr
			#print('Reloc %lx' % rea)
			while True:
				offset = relocData[roffset]
				roffset += 1
				if offset == 0: # end of the relocation table
					break
				if offset == 1: # odd numbers are not valid, 1 is a special case to skip 254 bytes without relocating
					rea += 254
					continue
				rea += offset
				#print('Reloc %lx' % rea)
	if header.PRG_ssize:
		symboltableDataOffset = ctypes.sizeof(gemdos_executable_header) + header.PRG_tsize + header.PRG_dsize
		print('SYMBOLS: 0x%lx/0x%lx bytes' % (symboltableDataOffset,header.PRG_ssize))
		li.seek(symboltableDataOffset)
		symboltableData = li.read(header.PRG_ssize)
		soffset = 0
		SYMFLAGS = {
			0x8000:'Defined',
			0x4000:'Equated',
			0x2000:'Global',
			0x1000:'Register',
			0x0800:'External',
			0x0400:'In DATA segment',
			0x0200:'In TEXT segment',
			0x0100:'In BSS segment',
			0x0280:'Start of object module',
			0x02C0:'Start of library module'
		}
		while soffset < header.PRG_ssize:
			entry = symboltableData[soffset:soffset+14]
			soffset += 14
			name = entry[:8]
			flags,value = struct.unpack('>HL', entry[8:])
			if (flags & 0x0048) and soffset + 14 < header.PRG_ssize: # GST extended DRI symbol format?
				entry = symboltableData[soffset:soffset+14]
				soffset += 14
				name += entry[:8]
			try:
				name = name.decode('ascii').strip()
			except:
				break
			symFlags = ''
			if flags & 0x8000:
				symFlags += 'd'
			else:
				symFlags += '-'
			if flags & 0x4000:
				symFlags += 'A'
			else:
				symFlags += '-'
			if flags & 0x2000:
				symFlags += 'g'
			else:
				symFlags += '-'
			if flags & 0x1000:
				symFlags += 'r'
			else:
				symFlags += '-'
			if flags & 0x0800:
				symFlags += 'x'
			else:
				symFlags += '-'
			if flags & 0x0400:
				symFlags += 'D'
			else:
				symFlags += '-'
			if flags & 0x0200:
				symFlags += 'T'
			else:
				symFlags += '-'
			if flags & 0x0100:
				symFlags += 'B'
			else:
				symFlags += '-'
			if flags & 0xFF:
				symFlags += '%02x' % (flags & 0xFF)
			print('%s %08x %s' % (symFlags,value, name))
