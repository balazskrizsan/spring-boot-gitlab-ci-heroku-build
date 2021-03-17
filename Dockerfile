FROM maven:3.6.3-openjdk-15

#RUN apt-get update
#COPY . /project
#RUN  cd /project && mvn clean install -DskipTests=true
#RUN  mv /root/.m2/repository/com/kbalazsworks/build/0.0.1-SNAPSHOT/build-0.0.1-SNAPSHOT.jar /root/build-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java", "--enable-preview", "-DSERVER_PORT=8183", "-jar", "/project/app.jar"]
