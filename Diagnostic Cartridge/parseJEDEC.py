#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import pprint
import sys
import binascii
import struct
from functools import cmp_to_key

pp = pprint.PrettyPrinter(width=200,compact=True)

def parse_PAL16L8(filename, pinDescription):
	print(filename)
	print('=' * len(filename))

	chip = pinDescription.upper().split()
	pins = {}
	pinNumber = 1
	PAL16L8 = [ 2,1,3,18,4,17,5,16,6,15,7,14,8,13,9,11 ]
	if len(PAL16L8)*2!=32:
		print('PAL16L8 needs 32 fuses per row')
		sys.exit(-1)
	for pin in chip[10:] + chip[:10][::-1]:
		#print('%2d %s' % (pinNumber, pin))
		pins[pinNumber] = pin
		pinNumber = pinNumber + 1
	if len(pins)!=20:
		print('Not enough pins')
		sys.exit(0)
	if pins[20] != 'VCC':
		print('VCC pin wrong')
		sys.exit(0)
	if pins[10] != 'GND':
		print('GND pin wrong')
		sys.exit(0)

	def pin_cmp(a, b):
		a1 = a.strip('/')
		b1 = b.strip('/')
		if a1[0] == 'A' and b1[0] == 'A':
			av = int(a1[1:])
			bv = int(b1[1:])
			if av > bv:
				return -1
			elif av == bv:
				return 0
			else:
				return 1
		if a1 > b1:
			return 1
		elif a1 == b1:
			return 0
		else:
			return -1

	with open(filename, "rb") as f:
		for outPin in range(12,19+1):
			f.seek((19-outPin)*4*8)
			outputEnable = struct.unpack(">L", f.read(4))[0]
			if outputEnable == 0xFFFFFFFF:
				pass # pin is an output
			elif outputEnable == 0x00000000:
				continue # pin is an input
			else:
				print('OE %08lx' % outputEnable,end=' ')
			orInputLines = struct.unpack(">7L", f.read(4*7))
			andCond = []
			for orInput in orInputLines:
				#if orInput:
				#	print("{0:08x} {0:032b}".format(orInput))
				orCond = []
				orCondUsed = set()
				for bit in range(0,32,2):
					pin = pins[PAL16L8[bit>>1]]
					bitval = (orInput >> (30-bit)) & 3
					if bitval==0 or bitval==3:
						continue
					#if orInput:
					#	print(bit,pin,bitval)
					if bitval==2:
						ostr = '/'+pin
						if ostr.startswith('//'):
							ostr = ostr[2:]
					else:
						ostr = pin
					orCond.append(ostr)
				if len(orCond):
					orCond.sort(key=cmp_to_key(pin_cmp))
					andCond.append(' * '.join(orCond))
			ostr = '/'+pins[outPin]
			if ostr.startswith('//'):
				ostr = ostr[2:]
			print('%s = %s' % (ostr,' +\n\t'.join(andCond)))
				

if __name__ == "__main__":
	PINS_MEM = '''
	VCC /CE_EPROM /CE_SRAM_E /CE_SRAM_O XAS XDMA XLDS XUDS /SRAM_DTACK XROM3
	A23 A22 A21 A20 A19 A18 A17 A16 XROM4 GND
	'''
	parse_PAL16L8("BI-MEM.bin", PINS_MEM);

	print()

	PINS_IO = '''
	VCC /IO_DTACK A9 A8 CE_U12_LED CE_U6_DIP CE_U7_DX1 CE_U8_DX2 CE_U13_EEPROM RXW
	A15 A14 A13 A12 A11 A10 XDEV XUDS XLDS GND
	'''
	parse_PAL16L8("BI-IO.bin", PINS_IO);
