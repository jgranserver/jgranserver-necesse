FROM eclipse-temurin:17-jre

WORKDIR /app

COPY . /app/

EXPOSE 14159

# Automatically create/load a world called "MyWorld"
CMD ["java", "-jar", "Server.jar", "-nogui", "-world", "MyWorld"]
