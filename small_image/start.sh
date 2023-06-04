#!/bin/sh
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export PATH="$PATH:/hadoop/hadoop-3.3.5/bin"
# https://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-common/CommandsManual.html#jar
hadoop "jar" $HADOOP_JAR_PATH $HADOOP_MAINCLASS $HADOOP_INPUT $HADOOP_OUTPUT