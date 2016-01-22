#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a01-rocksetta-checks.sh
# best in cloud 9 to just right click this file and select run


# try this bazel installer
# https://github.com/bazelbuild/bazel/releases/download/0.1.2/bazel-0.1.2-jdk7-installer-linux-x86_64.sh





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



echo "Now checking if Android SDK is installed"

android -h
echo ""

echo "--------------------------------------------------------------"
echo ". "


echo "Now checking where android sdk is installed"

readlink -f $(which android)


echo "--------------------------------------------------------------"
echo ". "



echo "Now checking where python is installed"
readlink -f $(which python)
echo ""
echo "--------------------------------------------------------------"



echo "echo "Now checking where pip is installed"
readlink -f $(which pip)
echo ""
echo "--------------------------------------------------------------"
echo ". "




echo "echo "Now checking where bazel is installed"
readlink -f $(which bazel)
echo ""
echo "--------------------------------------------------------------"
echo ". "




echo "echo "Now checking where Gradel is installed"
readlink -f $(which gradel)
echo ""
echo "--------------------------------------------------------------"
echo ". "



echo "echo "Now checking where gcc is installed"
readlink -f $(which gcc)
echo ""

echo "--------------------------------------------------------------"
echo ". "



echo "next list this directory"
pwd
echo ""
ls -lah  

echo "--------------------------------------------------------------"
echo "Some other useful commands are cd     cd ..      dir    ls     pwd     "
echo "."

nano ~/.profile    #Re-read your profile

