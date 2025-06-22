FROM eclipse-temurin:17-jre

WORKDIR /app

COPY Server.jar /app/
COPY server.cfg /app/

EXPOSE 14159

CMD ["java", "-Xmx400m", "-jar", "Server.jar", "-headless", "-world", "MyWorld", "-port", "14159"]
