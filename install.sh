#!/bin/bash
# Unnecessary because of WORKDIR /hadoop
cd /hadoop
# Update apt repositories
apt -y update
# Install :
# - git (to clone Apache repository)
# - JDK 8 (to run hadoop and maven)
# - maven (to build projects)
# - wget (simple tool to download a file - I could've used curl instead)
apt -y install git openjdk-8-jdk maven wget
# Download binary distribution of Hadoop 3.3.5
wget 'https://dlcdn.apache.org/hadoop/common/hadoop-3.3.5/hadoop-3.3.5.tar.gz'
# Extract archive
tar -xf hadoop-3.3.5.tar.gz
# Delete archive as it's no longer needed
rm hadoop-3.3.5.tar.gz
# Adjust PATH environmental variable to include hadoop bins
export PATH="$PATH:/hadoop/hadoop-3.3.5/bin"
# Edit .bashrc to do the same (in case of interactive session)
echo 'export PATH="$PATH:/hadoop/hadoop-3.3.5/bin"' >> /root/.bashrc
echo 'export PATH="$PATH:/hadoop/hadoop-3.3.5/bin"' >> /etc/profile
# Same for JAVA_HOME
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
echo 'export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"' >> /root/.bashrc
echo 'export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"' >> /etc/profile

# Clone official Apache Hadoop repository from GitHub
# Limiting depth to 1 commit
# Source: https://github.com/apache/hadoop
git clone --depth 1 https://github.com/apache/hadoop
cd ./hadoop/hadoop-mapreduce-project/hadoop-mapreduce-examples/
# Clean previously created target (there should be none)
# and do a complete install.
mvn clean install
# Copy built jar
cp ./target/hadoop-mapreduce-examples-3.4.0-SNAPSHOT.jar /hadoop/