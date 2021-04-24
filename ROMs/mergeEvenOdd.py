#!/usr/bin/env python
# -*- coding: utf-8 -*-

f = open('STBook_0.65_91.10.03_E.BIN', 'rb')
even = f.read()
f.close()
f = open('STBook_0.65_91.10.03_O.BIN', 'rb')
odd = f.read()
f.close()

out = b''
for i in range(len(even)):
    out += even[i]
    out += odd[i]

f = open('STBook_0.65_91.10.03.BIN', 'wb')
f.write(out)
f.close()
