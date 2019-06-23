#!/bin/bash

echo "running compose in broker dir set up by './setup-broker.bash' "
pushd ~/kafka/broker/kafka-docker
docker-compose -f docker-compose-single-broker.yml up 
popd


