FROM --platform=linux/amd64 eclipse-temurin:17-jdk-alpine
RUN apk add --no-cache --upgrade bash
ENV AWS_ACCESS_KEY_ID=
ENV AWS_SECRET_ACCESS_KEY=
WORKDIR /usr/src
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
COPY app.sh app.sh
COPY application.properties application.properties
RUN sed -i 's/\r$//' app.sh
RUN chmod 755 app.sh
EXPOSE 8080
ENTRYPOINT ["/bin/bash","/usr/src/app.sh"]