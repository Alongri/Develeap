# Build stage
FROM maven:3.6.3-openjdk-8

# Set working directory
WORKDIR /app

# Copy source code
COPY . /app/

# Build application
RUN mvn clean install

# Create directory for database files
RUN mkdir -p /lavagna/database

# Copy the built war file
RUN cp target/lavagna-jetty-console.war /lavagna/

# Copy entrypoint script
COPY entrypoint.sh /lavagna/
RUN chmod +x /lavagna/entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/lavagna/entrypoint.sh"]

# Expose default port
EXPOSE 8080