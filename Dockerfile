FROM eclipse-temurin:17-jre

WORKDIR /app

# Copy all server files
COPY . /app/

EXPOSE 14159

# Use the same command as the batch file (but with globally available java)
CMD ["java", "-jar", "Server.jar", "-nogui"]
