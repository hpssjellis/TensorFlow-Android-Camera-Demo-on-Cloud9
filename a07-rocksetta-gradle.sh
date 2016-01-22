#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a07-rocksetta-gradle.sh
# best in cloud 9 to just right click this file and select run


#RUN cd /usr/local && \
#    curl -L https://services.gradle.org/distributions/gradle-2.5-bin.zip -o gradle-2.5-bin.zip && \
#    unzip gradle-2.5-bin.zip

#!/bin/bash
# installs to /opt/gradle
# existing versions are not overwritten/deleted
# seamless upgrades/downgrades
# $GRADLE_HOME points to latest *installed* (not released)
gradle_version=2.9
mkdir /home/ubuntu/workspace/gradle
wget -N http://downloads.gradle.org/distributions/gradle-${gradle_version}-all.zip
unzip -oq ./gradle-${gradle_version}-all.zip -d /home/ubuntu/workspace/gradle
ln -sfnv gradle-${gradle_version} /home/ubuntu/workspace/gradle/latest

echo "exporting the Path to my .profile file so other terminals have the path"

printf "\nexport GRADLE_HOME=/home/ubuntu/workspace/gradle/latest\nexport PATH=\$PATH:\$GRADLE_HOME/bin"  >> ~/.profile


echo "exporting the path so that the next command works"


export GRADLE_HOME=/home/ubuntu/workspace/gradle/latest
export PATH=$PATH:$GRADLE_HOME/bin


#printf "export GRADLE_HOME=/home/ubuntu/workspace/gradle/latest\nexport PATH=\$PATH:\$GRADLE_HOME/bin" > /etc/profile.d/gradle.sh
#. /etc/profile.d/gradle.sh
hash -r ; sync
# check installation

echo "setup gradle"

gradle
echo "see if it worked"
gradle -v

rm gradle-2.9-all.zip

#echo "export PATH=$GRADLE_HOME/bin:$PATH" > ~/.profile
#source ~/.profile    #Re-read your profile

#export JAVA_HOME=/usr/lib/jvm/jdk1.7.0
#export PATH=$PATH:$JAVA_HOME/bin
