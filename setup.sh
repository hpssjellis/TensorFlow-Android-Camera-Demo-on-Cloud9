#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash setup.sh


echo "First checking the Python version"
python --version

echo "--------------------------------------------------------------"
echo ". "


echo "Now checking if pip is installed"

pip list

echo "--------------------------------------------------------------"
echo ". "


echo "Now checking if java is installed"

java -version
echo ""
javac -version

echo "--------------------------------------------------------------"
echo ". "





echo "Now checking where the jdk is installed"

readlink -f $(which java)
echo ""
readlink -f $(which javac)

echo "--------------------------------------------------------------"
echo ". "



echo "next list this directory"
pwd
echo ""
ls -lah  

echo "--------------------------------------------------------------"
echo "Some other useful commands are cd     cd ..      dir    ls     pwd     "
echo "."



echo "Now trying lots of installs"
read -p "Press [Enter] key to start backup..."





echo "Install gcc g++ build-essential"

sudo apt-get install gcc g++ build-essential

echo "--------------------------------------------------------------"
echo ". "

echo "Installing Java"

sudo add-apt-repository ppa:webupd8team/java

sudo apt-get update

sudo apt-get install oracle-java8-installer

sudo apt-get install openjdk-8-jdk



echo "Again checking if a jdk is installed"

java -version
echo ""
javac -version
echo ""

readlink -f $(which java)
echo ""
readlink -f $(which javac)

echo "--------------------------------------------------------------"
echo ". "





JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre/bin/java
export JAVA_HOME
PATH=$JAVA_HOME/bin:"${PATH}"
export PATH








echo "Now trying Bazel"
read -p "Press [Enter] key to start backup..."



#wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u20-b26/jdk-8u20-linux-x64.tar.gz



git clone https://github.com/bazelbuild/bazel.git


cd bazel
bash compile.sh

cd ..


echo "----------------Bazel Done----------------------------------------------"
echo ". "

echo "Now get TensorFlow"


git clone --recurse-submodules https://github.com/tensorflow/tensorflow


echo "Now download the image sets"


wget https://storage.googleapis.com/download.tensorflow.org/models/inception5h.zip -O /tmp/inception5h.zip

unzip /tmp/inception5h.zip -d /home/ubuntu/workspace/tensorflow/tensorflow/examples/android/assets/


echo "-------------DONE-------------------------------------------------"
echo ". "


echo "Now get the Android SDK"



#tar -xvzf /path/to/yourfile.tgz
#http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
#"android list sdk" will connect to the remote repository and list all the packages available with an index number.
#"android update sdk --no-ui" accepts a "--filter" argument that can take a package index, or a category name.




wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz -O /tmp/android-sdk_r24.4.1-linux.tgz

tar -xvzf /tmp/android-sdk_r24.4.1-linux.tgz -C /home/ubuntu/workspace/





export PATH=${PATH}:/home/ubuntu/workspace/android-sdk-linux/tools
export PATH=${PATH}:/home/ubuntu/workspace/android-sdk-linux/platform-tools
export ANDROID_SDK_HOME ={PATH}:/home/ubuntu/workspace/android-sdk-linux


cd /android-sdk-linux/tools/
android update sdk --no-ui
cd ..
# note: for size sake had to delete several android platforms 10-20 ???

echo "-------------Android SDK DONE-------------------------------------------------"
echo ". "

echo "Now lets try the Android NDK"



wget http://dl.google.com/android/ndk/android-ndk-r10e-linux-x86_64.bin -O /home/ubuntu/workspace/android-ndk-r10e-linux-x86_64.bin

chmod a+x android-ndk-r10e-linux-x86_64.bin
./android-ndk-r10e-linux-x86_64.bin





echo "-------------Android NDK DONE-------------------------------------------------"
echo ". "




echo ""
echo "If you have made it this far the installation has finished"
echo "SETUP.SH HAS FINISHED INSTALLING. You can close this terminal window by clicking the x"
echo "-----------------------------------------"
echo ""






