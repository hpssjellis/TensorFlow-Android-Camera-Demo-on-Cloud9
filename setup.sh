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

echo "--------------------------------------------------------------"
echo ". "

echo "Now checking if java is installed"

java -version

echo "--------------------------------------------------------------"
echo ". "



echo "Now checking if a jdk is installed"

readlink -f $(which java)

echo "--------------------------------------------------------------"
echo ". "



echo "next list this directory"
pwd
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

readlink -f $(which java)

echo "--------------------------------------------------------------"
echo ". "




echo "Now trying Bazel"
read -p "Press [Enter] key to start backup..."



#wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u20-b26/jdk-8u20-linux-x64.tar.gz



git clone https://github.com/bazelbuild/bazel.git


cd bazel
run compile.sh

cd ..




echo "-------------DONE-------------------------------------------------"
echo ". "































echo "Activate the environment use deactivate to get your cursor back"
source ~/virtual-tf/bin/activate 


echo "--------------------------------------------------------------"
echo ". "

echo "Now intall tensorFlow into the enviroment"

#pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.5.0-cp27-none-linux_x86_64.whl

echo "--------------------------------------------------------------"
echo ". "

echo "Unfortunately on cloud 9 Pip hides the TensorFlow folder so lets clone it for our use"
echo "Kind of wasteful but it isn't on our computer anyway"

#deactivate

#git clone --recurse-submodules https://github.com/tensorflow/tensorflow


echo "--------------------------------------------------------------"
echo ". "




echo "--------------------------------------------------------------"
echo ". "

echo "--------------------------------------------------------------"
echo "You can close this window by clicking the close x"
echo "Right click rocksetta files and select run "
echo "you can also run them manually by entering the virtual environment"
echo "source ~/virtual-tf/bin/activate "
echo "Then bash rocksetta????.sh"
echo "deactivate    to get out of the virtual enviroment"
echo "-----------------------------------------"
echo ""
echo "If you have made it this far the installation has finished"
echo "SETUP.SH HAS FINISHED INSTALLING. You can close this terminal window by clicking the x"
echo "-----------------------------------------"
echo ""






