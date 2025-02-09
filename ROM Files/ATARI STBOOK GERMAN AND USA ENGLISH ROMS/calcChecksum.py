import crcmod

def swap(buffer):
	ret = []
	for i in range(0,len(buffer),2):
		a = buffer[i]
		b = buffer[i+1]
		ret.append(b)
		ret.append(a)
	return bytes(ret)

crc16 = crcmod.mkCrcFun(0x11021, rev=False, initCrc=0x0000)

crcOffset = 0x3fffe
if True:
	filename = "BYTE SWAPPED FLASHABLE ACSI BOOT MODDED code/TOS208 book C302365.003ger_12_16_92_added byte patch to fix boot bug.bin"
	#filename = "STBOOK_ROM_orig.bin"
	doSwap = True
else:
	filename = "NON BYTE SWAP RIPS/T208G.BIN"
	doSwap = False

rom = open(filename, "rb").read()
if doSwap:
	rom = swap(rom)
print('Size = %d' % len(rom))
print('CRC  = %02x%02x == %04x' % (rom[crcOffset],rom[crcOffset+1],crc16(rom[:crcOffset])))
