#!/bin/bash

pushd ../../nodes/consumer

echo "pushing files to ~/kafka/consumer"
mkdir -p ~/kafka/consumer
cp -R * ~/kafka/consumer
pushd ~/kafka/consumer
sbt assembly
echo "Built consumer"
popd
popd

