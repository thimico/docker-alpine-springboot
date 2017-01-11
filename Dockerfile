FROM thimico/jdk8

VOLUME /tmp

RUN mkdir /app
WORKDIR /app

RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]
