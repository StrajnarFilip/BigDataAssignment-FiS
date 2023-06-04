FROM alpine:3.18.0
WORKDIR /hadoop
COPY "start.sh" "."
COPY "mapreduce-examples.jar" "."
RUN ["apk", "update"]
# Install bash
RUN ["apk", "add", "bash"]
# Install OpenJDK
RUN ["apk", "add", "openjdk8-jre"]
# Download binary distribution of Hadoop 3.3.5
RUN ["wget", "https://dlcdn.apache.org/hadoop/common/hadoop-3.3.5/hadoop-3.3.5.tar.gz"]
# Extract it
RUN ["tar", "xf", "hadoop-3.3.5.tar.gz"]
# Remove tar
RUN ["rm", "hadoop-3.3.5.tar.gz"]
# Set start script
CMD [ "/bin/sh", "start.sh" ]