#!/bin/sh

# Run Lavagna with HSQLDB configuration
java -Ddatasource.dialect=HSQLDB \
     -Ddatasource.url=jdbc:hsqldb:file:/lavagna/database/lavagna \
     -Ddatasource.username=sa \
     -Ddatasource.password= \
     -Dspring.profile.active=dev \
     -jar /lavagna/lavagna-jetty-console.war