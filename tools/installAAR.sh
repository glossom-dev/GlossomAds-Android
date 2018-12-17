#!/bin/sh

GROUP=com.glossom
ARTIFACT=glossom-ads-android
VERSION=1.9.2
PACKAGING=aar

mvn clean dependency:copy-dependencies -DgroupId=$GROUP -DartifactId=$ARTIFACT -Dversion=$VERSION -Dtype=$PACKAGING -U

mvn install:install-file -DgroupId=$GROUP -DartifactId=$ARTIFACT -Dversion=$VERSION \
-Dfile=target/dependency/$ARTIFACT-$VERSION.$PACKAGING \
-Dpackaging=$PACKAGING \
-DgeneratePom=true \
-DlocalRepositoryPath=../ \
-DcreateChecksum=true

