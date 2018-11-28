#!/bin/bash
set -e

make
srec_cat -output bin/nodemcu.bin -binary bin/0x00000.bin -binary -fill 0xff 0x00000 0x10000 bin/0x10000.bin -binary -offset 0x10000
