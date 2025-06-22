FROM openjdk:17-alpine

WORKDIR /app

COPY Server.jar /app/
COPY server.cfg /app/

EXPOSE 14159

CMD ["java", "-Xmx400m", "-jar", "necesse-server.jar", "-headless", "-world", "jgranserver", "-port", "14159"]
