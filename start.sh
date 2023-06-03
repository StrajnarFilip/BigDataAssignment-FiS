#!/bin/bash
hadoop "jar" "/hadoop/hadoop-mapreduce-examples-3.4.0-SNAPSHOT.jar" "wordcount" "/hadoop-input/input.txt" "/hadoop-output/out" 