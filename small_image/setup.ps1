
git clone --depth 1 "https://github.com/apache/hadoop"
Set-Location "./hadoop/hadoop-mapreduce-project/hadoop-mapreduce-examples"
mvn clean package
Copy-Item "./target/hadoop-mapreduce-examples-3.4.0-SNAPSHOT.jar" "../../../mapreduce-examples.jar"
Set-Location "../../../"
docker build --tag "988977i/fis-hadoop:compact" .