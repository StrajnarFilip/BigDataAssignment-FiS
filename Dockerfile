# LTS at time of writing
FROM ubuntu:22.04
# Set current working directory
WORKDIR /hadoop
# Copy contents from host device into docker image
COPY . .
# Execute install shell script
RUN [ "/bin/bash", "install.sh"]
CMD [ "/bin/bash", "/hadoop/start.sh" ]