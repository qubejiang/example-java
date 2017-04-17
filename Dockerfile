FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD target/org.jacoco.examples.maven.java-1.0-SNAPSHOT.jar examples-maven-java.jar
RUN sh -c 'touch /examples-maven-java.jar'

ENTRYPOINT ["java", "-jar","/spring-boot-hello-world.jar"]
