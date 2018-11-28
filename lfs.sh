#!/bin/bash
set -e

# these addresses are specific to this _exact_ firmware config
./luac.cross -a 0x402a1000 -o bin/lfs.img local/lua/*.lua
esptool --baud 460800 write_flash 0xa1000 bin/lfs.img
