#!/bin/bash

while ! curl http://mongo:27017/
do
  echo "$(date) - still trying"
  sleep 1
done
echo "$(date) - connected successfully"

java -jar /usr/local/app/ordering-*.jar

#Parámetros de configuración por defecto para conectar con MongoDB. 
#No hace falta cuando se ejecute en local, pero al usar dockercompose o en producción, 
#hay que indicar la IP del contenedor de MongoDB (mongo) y la base de datos (ordering), 
#datos que se buscan en el fichero application.properties. 
mongodb.host: mongo 
mongodb.database: ordering 