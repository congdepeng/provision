#!/usr/bin/zsh

echo $H
cd $H/temp

#delete target
#rm gradle.zip
#rm -rf gradle-2.2
#rm $H/artifact/gradle

#download and unzip
#wget https://services.gradle.org/distributions/gradle-2.2-all.zip -O gradle.zip
#wget https://services.gradle.org/distributions/gradle-2.2.1-all.zip -O gradle.zip 
unzip gradle-2.2.1-all.zip
cp -R gradle-2.2.1 $H/artifact/gradle
export GRADLE_HOME=$H/artifact/gradle
export PATH=$GRADLE_HOME/bin:$PATH
echo $PATH
gradle -v
