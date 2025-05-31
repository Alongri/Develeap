FROM node:24-alpine3.20
WORKDIR /app
COPY ./src/package*.json ./
RUN npm install
COPY ./src ./
COPY entry-point.sh ./
RUN chmod +x entry-point.sh
ENTRYPOINT [ "./entry-point.sh" ]