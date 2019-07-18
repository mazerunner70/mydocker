#!/bin/bash

pushd ../../nodes/logger

echo "pushing files to ~/kafka/logger"
mkdir -p ~/kafka/logger
cp -R * ~/kafka/logger
pushd ~/kafka/logger
sbt assembly
echo "Built logger"
popd
popd

