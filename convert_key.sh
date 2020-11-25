#!/bin/sh -e

# $1 is the name of the JKS file to convert
echo Converting $1 to PKCS12
keytool -importkeystore -srcstoretype JKS -deststoretype PKCS12 -srckeystore $1 -destkeystore converted_key.p12
echo Conversion complete.