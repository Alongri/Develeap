# Build Stage
FROM maven:3.8.6-jdk-8-slim AS build

# Set the working directory
WORKDIR /app

# Copy the application files
COPY pom.xml ./
COPY src ./src

# Build the application
RUN mvn verify

# Runtime Stage
FROM openjdk:8-jre-slim

# Create a non-root user and group for security
RUN addgroup --system appgroup && adduser --system --ingroup appgroup appuser

# Set the working directory
WORKDIR /app

# Copy the compiled JAR file from the build stage
COPY --from=build /app/target/hello-java.jar /app/hello-java.jar

# Set permissions and switch to the non-root user
RUN chown -R appuser:appgroup /app && chmod -R 755 /app
USER appuser

# Define the entry point for the application
ENTRYPOINT ["java", "-jar", "/app/hello-java.jar"]
