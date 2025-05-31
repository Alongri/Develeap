FROM maven:3.6.3-jdk-11-slim
WORKDIR /app
COPY . .
# Compile a fresh copy of our java files into a .jar file
RUN mvn clean package
COPY entry-point.sh /app/entry-point.sh
RUN chmod +x /app/entry-point.sh
VOLUME /in
VOLUME /out
ENTRYPOINT ["sh", "/app/entry-point.sh"]