FROM thimico/jre8

VOLUME /tmp

RUN mkdir /app
RUN mkdir /app/logs
RUN echo '' > /app/logs/guardian.log
WORKDIR /app

RUN sh -c 'touch /app.war'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.war"]
