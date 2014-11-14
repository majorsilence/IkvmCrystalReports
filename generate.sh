#!/bin/bash
set -e # exit on first error
set -u # exit on using unset variable

cd ./downloadedfiles/crystalruntime/lib

mono ../../ikvm/ikvm-7.2.4630.5/bin/ikvmc.exe -target:library commons-collections-3.1.jar commons-configuration-1.2.jar CrystalCommon2.jar commons-lang-2.1.jar commons-logging.jar com.azalea.ufl.barcode.1.0.jar cvom.jar DatabaseConnectors.jar icu4j.jar jai_imageio.jar JDBInterface.jar jrcerom.jar keycodeDecoder.jar log4j.jar logging.jar pfjgraphics.jar QueryBuilder.jar XMLConnector.jar xpp3.jar CrystalReportsRuntime.jar -out:crystal.dll

mv crystal.dll ../../crystal.dll
