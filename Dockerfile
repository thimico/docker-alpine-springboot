FROM thimico/jre8

VOLUME /tmp

RUN mkdir /app
WORKDIR /app

RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]
