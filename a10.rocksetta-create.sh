#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a10.rocksetta-create.sh
# best in cloud 9 to just right click this file and select run



android create project \
--target android-20 \
--name myNameWow3 \
--path wow3 \
--activity myActivityWow3 \
--package com.example.wow3



#cd wow2

#android update project --path .

#ant

android update project --name myNameWow3 --target android-20 --path wow3

cd wow3

ant clean

ant debug
