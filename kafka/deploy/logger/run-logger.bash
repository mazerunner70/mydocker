#!/bin/bash

pushd ~/kafka/logger/target/scala-2.13/
java -jar logger-assembly-0.1.jar $*
popd

