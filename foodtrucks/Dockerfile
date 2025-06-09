FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install Python, curl and node
RUN apt-get update && apt-get install -y \
    python2.7 \
    curl \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*    

# Install pip for Python 2
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py \
    && python2.7 get-pip.py \
    && rm get-pip.py

# Select the working dir
WORKDIR /app

# Copy the project folder to the docker
COPY project/flask-app ./flask-app  

WORKDIR /app/flask-app
    
RUN npm install
RUN npm run build
RUN pip install -r requirements.txt
RUN apt-get update && apt-get install -y ca-certificates
ENV REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

EXPOSE 5000

ENTRYPOINT ["python2","./app.py"]




