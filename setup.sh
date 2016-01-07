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

unzip /tmp/inception5h.zip -d /home/ubuntu/workspace/bazel/examples/android/assets/






echo "-------------DONE-------------------------------------------------"
echo ". "















echo ""
echo "If you have made it this far the installation has finished"
echo "SETUP.SH HAS FINISHED INSTALLING. You can close this terminal window by clicking the x"
echo "-----------------------------------------"
echo ""






