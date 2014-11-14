#!/bin/bash
set -e # exit on first error
set -u # exit on using unset variable

mkdir downloadedfiles
cd downloadedfiles

wget -O ikvm.zip "http://downloads.sourceforge.net/project/ikvm/ikvm/7.2.4630.5/ikvmbin-7.2.4630.5.zip?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fikvm%2Ffiles%2F&ts=1403363031&use_mirror=superb-dca2"
unzip ikvm.zip -d ./ikvm
rm -f ikvm.zip

wget -O crjava.zip "http://downloads.businessobjects.com/akdlm/crystalreportsforeclipse/2_0/crjava-runtime_12.2.218.zip"
unzip crjava.zip -d ./crystalruntime
rm -f crjava.zip

wget -O examplereport.zip "https://www.sdn.sap.com/irj/boc/index?rid=/library/uuid/f00e6ffe-3c11-2c10-52a7-e0eb415f3fbb&overridelayout=true"
unzip examplereport.zip -d ./examplereport
rm -f examplereport.zip

cd ..