#!/bin/bash

pushd ~/kafka/consumer/target/scala-2.13/
java -jar consumer-assembly-0.1.jar
popd

