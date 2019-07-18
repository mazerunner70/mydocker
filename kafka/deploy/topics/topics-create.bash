#!/bin/bash

pushd ~/kafka/topics/kafka*
bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 2 --topic fibonacci-topic
popd
