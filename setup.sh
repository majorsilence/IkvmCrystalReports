#!/bin/bash
set -e # exit on first error
set -u # exit on using unset variable

mkdir downloadedfiles
cd downloadedfiles

wget -O ikvm.zip "http://www.frijters.net/ikvmbin-8.1.5717.0.zip"
unzip ikvm.zip -d ./ikvm
rm -f ikvm.zip

wget -O crjava.zip "http://downloads.businessobjects.com/akdlm/crystalreportsforeclipse/2_0/crjava-runtime_12.2.218.zip"
unzip crjava.zip -d ./crystalruntime
rm -f crjava.zip

wget -O examplereport.zip "https://www.sdn.sap.com/irj/boc/index?rid=/library/uuid/f00e6ffe-3c11-2c10-52a7-e0eb415f3fbb&overridelayout=true"
unzip examplereport.zip -d ./examplereport
rm -f examplereport.zip

cd ..