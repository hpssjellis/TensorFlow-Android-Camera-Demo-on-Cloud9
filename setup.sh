#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash setup.sh
#  best in cloud 9 to just right click this file and select run





bash a02-rocksetta-gcc-java8.sh

bash a03-rocksetta-bazel.sh

bash a04-rocksetta-android-sdk.sh


bash a06-rocksetta-setup-android.sh


bash a07-rocksetta-gradle.sh


bash a08-rocksetta-paths.sh

bash a09-rocksetta-tensorflow.sh

bash a01-rocksetta-checks.sh


echo "Now lets make an App. Checkout a10.rocksetta-create.sh to see the steps"

bash a10.rocksetta-create.sh

echo "Look in the wow3/bin folder to see your myNameWow3-debug.apk file"
echo "run the index.html file and then Preview preview running App to view the .apk on a webpage to test on your Android 4.4.0 phone"
