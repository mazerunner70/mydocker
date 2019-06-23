#!/bin/bash

pushd ../../nodes/producer/scala

echo "pushing files to ~/kafka/producer"
mkdir -p ~/kafka/producer
cp -R * ~/kafka/producer
pushd ~/kafka/producer
sbt assembly
echo "Built producer"
popd
popd

