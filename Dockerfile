FROM openjdk:17-jre-slim

WORKDIR /app

COPY Server.jar /app/
COPY server.cfg /app/
COPY Procfile /app/

EXPOSE $PORT

CMD ["java", "-Xmx400m", "-jar", "Server.jar", "-headless", "-world", "MyWorld", "-port", "$PORT"]
