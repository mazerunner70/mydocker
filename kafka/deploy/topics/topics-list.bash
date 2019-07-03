#!/bin/bash

pushd ~/kafka/topics/kafka*
bin/kafka-topics.sh --zookeeper localhost:2181 --list
popd
