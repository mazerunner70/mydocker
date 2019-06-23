#!/bin/bash

echo "Placing files in ~/kafka/broker"
mkdir -p ~/kafka/broker
pushd ~/kafka/broker
echo "Cloning broker repo"
git clone https://github.com/wurstmeister/kafka-docker
echo "resetting to specific revision"
cd kafka-docker
git checkout 2a5bcb747883e28834212d3179f8254e352d6150

popd
echo "Amending config file"
cp docker-compose-single-broker.yml ~/kafka/broker/kafka-docker/

