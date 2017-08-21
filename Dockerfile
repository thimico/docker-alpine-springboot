FROM thimico/jre8

VOLUME /tmp

RUN mkdir /app
WORKDIR /app

RUN sh -c 'touch /app.war'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=8000,suspend=n","-jar","app.war"]
