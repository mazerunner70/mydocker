#!/bin/bash

FILE_NAME=kafka_2.12-2.2.0
mkdir -p ~/kafka/topics
pushd ~/kafka/topics
if ! test -f ~/kafka/topics/$FILE_NAME.tgz; then
    echo "downloading kafka tools"
    wget http://mirror.vorboss.net/apache/kafka/2.2.0/$FILE_NAME.tgz
    tar -xvzf $FILE_NAME.tgz
    rm $FILE_NAME.tgz
fi
popd
echo "Loaded kafka"


