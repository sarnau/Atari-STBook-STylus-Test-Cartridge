chars = {
'0': int('11000000',2),
'1': int('11111001',2),
'2': int('10100100',2),
'3': int('10110000',2),
'4': int('10011001',2),
'5': int('10010010',2),
'6': int('10000010',2),
'7': int('11111000',2),
'8': int('10000000',2),
'9': int('10010000',2),
'A': int('10001000',2),
'b': int('10000011',2),
'C': int('10100111',2),
'D': int('10100001',2),
'E': int('10000110',2),
'F': int('10001110',2),
'-': int('10111111',2),
'=': int('10110111',2),
'‖': int('11101011',2),
' ': int('11111111',2),
'U': int('11000001',2),
'⎺': int('11111110',2),
}

def printLED(mask,size=2):
	if (mask & 0x01) == 0:
		print(' '+'-'*size+' ')
	else:
		print(' '+' '*size+' ')
	for _ in range(size):
		if (mask & 0x20) == 0:
			print('|', end='')
		else:
			print(' ', end='')
		print(' '*size, end='')
		if (mask & 0x02) == 0:
			print('|', end='')
		else:
			print(' ', end='')
		print()
	if (mask & 0x40) == 0:
		print(' '+'-'*size+' ')
	else:
		print(' '+' '*size+' ')
	for _ in range(size):
		if (mask & 0x10) == 0:
			print('|', end='')
		else:
			print(' ', end='')
		print(' ' * size, end='')
		if (mask & 0x04) == 0:
			print('|', end='')
		else:
			print(' ', end='')
		print()
	if (mask & 0x08) == 0:
		print(' '+'-'*size+' ', end='')
	else:
		print(' '+' '*size+' ', end='')
	if (mask & 0x80) == 0:
		print(' .', end='')
	else:
		print('  ', end='')
	print()

def convCh(ch):
	if ch == ' ':
		return 'SPC'
	if ch == '.':
		return '_DOT_'
	if ch == '=':
		return '_eq_'
	if ch == '-':
		return '_neg_'
	if ch == '‖':
		return '_vlines_'
	if ch == '⎺':
		return '_uline_'
	return ch

for dot1 in range(0,0x100,0x80):
	if dot1==0x80:
		dot1Str = '.'
	else:
		dot1Str = ''
	for ch1 in chars:
		mask1 = chars[ch1] & ~dot1
		for dot2 in range(0,0x100,0x80):
			if dot2==0x80:
				dot2Str = '.'
			else:
				dot2Str = ''
			for ch2 in chars:
				mask2 = chars[ch2] & ~dot2
				symbol = 'LED_' + convCh(ch1) + convCh(dot1Str) + convCh(ch2) + convCh(dot2Str)
				symbol = symbol.replace('__','_').strip('_').replace('SPC','_')
				dispStr = '%s%s%s%s' % (ch1,dot1Str,ch2,dot2Str)
				mask = (mask1 << 8) | mask2
				#print('0x%04x : %s %s' % (mask,dispStr,symbol))
				print('add_enum_member(id,"%s", 0x%lx, -1);' % (symbol,mask))
				print('set_enum_member_cmt(get_enum_member(id,0x%lx,0,-1),"LED \'%s\'",1);' % (mask,dispStr))
