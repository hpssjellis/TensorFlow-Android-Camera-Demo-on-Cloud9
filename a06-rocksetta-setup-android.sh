#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a06-rocksetta-setup-android.sh
# best in cloud 9 to just right click this file and select run

android update sdk --filter tools --no-ui --force
android update sdk --filter platform-tools --no-ui --force 

android update sdk --filter extra --no-ui --force

android update sdk --filter extra --no-ui --force
android update sdk --all --filter build-tools-23.0.2 --no-ui --force
android update sdk --filter android-20 --no-ui --force   #Android 4.4W.2
android update sdk --filter android-22 --no-ui --force   #Android 5.1.1
android update sdk --filter android-23 --no-ui --force   #Android 6.0
#--accept-license

#expect -c '
#set timeout -1   ;
#spawn sudo /opt/android-sdk/tools/android update sdk -u; 
#expect { 
#    "Do you accept the license" { exp_send "y\r" ; exp_continue }
#    eof
#}
#'



#"android list sdk" will connect to the remote repository and list all the packages available with an index number.
#"android update sdk --no-ui" accepts a "--filter" argument that can take a package index, or a category name.


#RUN \  a docker command
#    echo y | /usr/local/android-sdk-linux/tools/android update sdk --filter tools --no-ui --force -a && \
#    echo y | /usr/local/android-sdk-linux/tools/android update sdk --filter platform-tools --no-ui --force -a && \
#    echo y | /usr/local/android-sdk-linux/tools/android update sdk --filter android-19 --no-ui --force -a && \
#    echo y | /usr/local/android-sdk-linux/tools/android update sdk --filter android-21 --no-ui --force -a && \
#    echo y | /usr/local/android-sdk-linux/tools/android update sdk --filter android-22 --no-ui --force -a && \
 #   echo y | /usr/local/android-sdk-linux/tools/android update sdk --filter android-23 --no-ui --force -a && \
#    echo y | /usr/local/android-sdk-linux/tools/android update sdk --filter extra --no-ui --force -a && \
#    echo y | /usr/local/android-sdk-linux/tools/android update sdk --all --filter build-tools-23.0.2 --no-ui --force
