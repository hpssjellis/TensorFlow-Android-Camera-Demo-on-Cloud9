#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a04-rocksetta-android-sdk.sh
# best in cloud 9 to just right click this file and select run




echo "Now get the Android SDK"



#tar -xvzf /path/to/yourfile.tgz
#http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
#"android list sdk" will connect to the remote repository and list all the packages available with an index number.
#"android update sdk --no-ui" accepts a "--filter" argument that can take a package index, or a category name.



cd /home/ubuntu/workspace/

wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz -O /home/ubuntu/workspace/android-sdk_r24.4.1-linux.tgz

tar -xvzf /home/ubuntu/workspace/android-sdk_r24.4.1-linux.tgz -C /home/ubuntu/workspace/

rm android-sdk_r24.4.1-linux.tgz

#chmod a+x android-sdk_r24.4.1-linux.bin
#./android-sdk_r24.4.1-linux.bin

#rm android-sdk_r24.4.1-linux.bin

echo "export paths to the .profile file so other terminals can use android sdk"

printf "\n\nexport ANDROID_SDK_HOME=/home/ubuntu/workspace/android-sdk-linux\nexport PATH=\$PATH:\$ANDROID_SDK_HOME/tools;\$ANDROID_SDK_HOME/platform-tools"  >> ~/.profile

echo "export paths here so this bash file can use android sdk"
export ANDROID_SDK_HOME=/home/ubuntu/workspace/android-sdk-linux
export PATH=$PATH:$ANDROID_SDK_HOME/tools;$ANDROID_SDK_HOME/platform-tools





#export ANDROID_SDK_HOME=/home/ubuntu/workspace/android-sdk-linux
#export PATH=${PATH}:$ANDROID_SDK_HOME/tools:$ANDROID_SDK_HOME/platform-tools



#cd /android-sdk-linux/tools/
#android update sdk --no-ui
#cd ..
# note: for size sake had to delete several android platforms 10-20 ???

#echo "-------------Android SDK DONE-------------------------------------------------"
#echo ". "

#echo "Now lets try the Android NDK"



wget http://dl.google.com/android/ndk/android-ndk-r10e-linux-x86_64.bin -O /home/ubuntu/workspace/android-ndk-r10e-linux-x86_64.bin

cd /home/ubuntu/workspace/

chmod a+x android-ndk-r10e-linux-x86_64.bin
./android-ndk-r10e-linux-x86_64.bin

rm android-ndk-r10e-linux-x86_64.bin


#export ANDROID_NDK_HOME=/home/ubuntu/workspace/android-ndk-r10e

#export PATH=${PATH}:ANDROID_NDK_HOME
#printf "export GRADLE_HOME=/home/ubuntu/workspace/gradle/latest\nexport PATH=\$PATH:\$GRADLE_HOME/bin"  >> ~/.profile

echo "export paths to the .profile file so other terminals can use android NDK"

printf "\nexport ANDROID_NDK_HOME=/home/ubuntu/workspace/android-ndk-r10e\nexport PATH=\$PATH:\$ANDROID_NDK_HOME"  >> ~/.profile



echo "export paths here so this file can use android NDK"
export ANDROID_NDK_HOME=/home/ubuntu/workspace/android-ndk-r10e
export PATH=$PATH:$ANDROID_NDK_HOME






## Add Android and NPM paths to the profile to preserve settings on boot
#SUGGEST TRYING THESE COMMANDS
#echo "export PATH=\$PATH:$ANDROID_SDK_HOME/tools" >> ".profile"
#echo "export PATH=\$PATH:$ANDROID_SDK_HOME/platform-tools" >> ".profile"






echo "-------------Android SDK  NDK installed but not setup-------------------------------------------------"
