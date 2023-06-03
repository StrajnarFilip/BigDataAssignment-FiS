#!/bin/bash
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export PATH="$PATH:/hadoop/hadoop-3.3.5/bin"
hadoop "jar" "/hadoop/hadoop-mapreduce-examples-3.4.0-SNAPSHOT.jar" "wordcount" "/hadoop-input/input.txt" "/hadoop-output/out" 