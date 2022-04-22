FROM openjdk:11
RUN addgroup --system springdocker && adduser --system --group springdocker
USER springdocker:springdocker
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
