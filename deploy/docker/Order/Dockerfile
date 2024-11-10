FROM openjdk:8-jre 
 
RUN mkdir -p /usr/local/app 
 
#copiar el .jar del servicio a la imagen 
COPY drop/*.jar /usr/local/app/ 
 
#copiar script que se ejecutará al lanzar el contenedor 
COPY drop/run.sh /usr/local/app/run.sh 
 
#cuando lancemos una pila de servicios con Docker, la ip de MongoDB no se puede  
#descrubrir al menos que se la pasemos en un archivo de propiedades 
COPY drop/application.properties application.properties 
 
EXPOSE 8080 
 
ENTRYPOINT ["sh", "/usr/local/app/run.sh"] 
