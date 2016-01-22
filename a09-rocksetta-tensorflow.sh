#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a09-rocksetta-tensorflow.sh
# best in cloud 9 to just right click this file and select run



echo "Now get TensorFlow"


git clone --recurse-submodules https://github.com/tensorflow/tensorflow /home/ubuntu/workspace/tensorflow/tensorflow


echo "Now download the image sets"


wget https://storage.googleapis.com/download.tensorflow.org/models/inception5h.zip -O /tmp/inception5h.zip

unzip /tmp/inception5h.zip -d /home/ubuntu/workspace/tensorflow/tensorflow/examples/android/assets/


rm /tmp/inception5h.zip



echo "exporting the Path to my .profile file so other terminals have the path"

printf "\n\Nexport TENSORFLOW_HOME=/home/ubuntu/workspace/tensorflow/tensorflow\nexport PATH=\$PATH:\$TENSORFLOW_HOME/bin"  >> ~/.profile


echo "exporting the path so that the next command works"


export TENSORFLOW_HOME=/home/ubuntu/workspace/tensorflow/tensorflow
export PATH=$PATH:$TENSORFLOW_HOME/bin





echo "-------------DONE TENSORFLOW-------------------------------------------------"
echo ". "
