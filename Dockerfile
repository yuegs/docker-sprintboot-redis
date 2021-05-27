FROM java:8
VOLUME /tmp
EXPOSE 9096
ARG JAR_FILE=redist-0.0.2-SNAPSHOT.jar
ADD target/${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]