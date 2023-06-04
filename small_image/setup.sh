#!/bin/sh
# This script should run on host device, not inside the container.
# It clones apache/hadoop repository, builds it and copies generated .jar
# on top level. After that, it builds the image.
git clone --depth 1 "https://github.com/apache/hadoop"
cd "./hadoop/hadoop-mapreduce-project/hadoop-mapreduce-examples"
mvn clean package
cp "./target/hadoop-mapreduce-examples-3.4.0-SNAPSHOT.jar" "../../../mapreduce-examples.jar"
cd "../../../"
docker build --tag "988977i/fis-hadoop:compact" .
