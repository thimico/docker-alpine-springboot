FROM thimico/jre8

VOLUME /tmp

RUN mkdir /app
WORKDIR /app

RUN sh -c 'touch /app.war'
#ENTRYPOINT ["java","-agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n","-Djava.security.egd=file:/dev/./urandom","-jar","app.war"]
ENTRYPOINT ["java $JAVA_OPTS ","-Djava.security.egd=file:/dev/./urandom","-jar","app.war"]
