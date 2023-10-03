#!/bin/bash
KEY=`openssl rand -base64 32`
echo $KEY >  target/linux/imx6ul/key/key.bin
echo $KEY > package/base-files/files/etc/key.bin


