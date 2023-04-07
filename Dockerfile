FROM alpine:latest

EXPOSE 8080

RUN apk upgrade
RUN apk add openjdk17

ENV WEB_VISUALIZER=/usr/app

COPY ./target/web_visualizer-1.0.0.jar $WEB_VISUALIZER/

WORKDIR $WEB_VISUALIZER

ENTRYPOINT ["java", "-jar", "web_visualizer-1.0.0.jar"]