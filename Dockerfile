FROM openjdk:8-jre-alpine
LABEL maintainer="billyowire95@gmail.com"
EXPOSE 8080
VOLUME /tmp
ADD target/demoappapi-*.jar demoappapi.jar
RUN /bin/sh -c 'touch /demoappapi.jar'
ENV TZ=Africa/Nairobi
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENTRYPOINT ["java","-Xmx256m", "-XX:+UseG1GC", "-Djava.security.egd=file:/dev/./urandom","-jar","/demoappapi.jar"]
