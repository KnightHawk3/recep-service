FROM gradle:6.2-jdk11 as builder
USER root
WORKDIR /builder
ADD . /builder
COPY .gradle-cache /home/gradle/.gradle
RUN gradle build --stacktrace --no-daemon --console=rich

FROM openjdk:11-jre-alpine
WORKDIR /app
EXPOSE 8080
COPY --from=builder /builder/build/libs/recep.jar .
CMD ["java", "-jar", "recep.jar"]