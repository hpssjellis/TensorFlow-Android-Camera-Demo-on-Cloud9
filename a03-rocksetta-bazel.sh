#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a03-rocksetta-bazel.sh
# best in cloud 9 to just right click this file and select run



echo "Now trying Bazel"
#read -p "Press [Enter] key to start "


#https://github.com/bazelbuild/bazel/releases/download/0.1.2/bazel-0.1.2-jdk7-installer-linux-x86_64.sh



#wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u20-b26/jdk-8u20-linux-x64.tar.gz



#git clone https://github.com/bazelbuild/bazel.git


#cd bazel
#bash compile.sh

#cd ..




#https://github.com/bazelbuild/bazel/releases/download/0.1.2/bazel-0.1.2-jdk7-installer-linux-x86_64.sh

mkdir /home/ubuntu/workspace/bazel

wget https://github.com/bazelbuild/bazel/releases/download/0.1.2/bazel-0.1.2-jdk7-installer-linux-x86_64.sh -O /home/ubuntu/workspace/bazel/bazel-0.1.2-jdk7-installer-linux-x86_64.sh

cd /home/ubuntu/workspace/bazel

chmod a+x bazel-0.1.2-jdk7-installer-linux-x86_64.sh
bash bazel-0.1.2-jdk7-installer-linux-x86_64.sh

rm bazel-0.1.2-jdk7-installer-linux-x86_64.sh


cd ..


echo "----------------Bazel Done----------------------------------------------"
echo ". "
