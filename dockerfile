#le decimos los instaladores necesitamos 
FROM node:20-bullseye

#carpeta donde se requiere que trabaje 
WORKDIR /app

#Ponemos el puerto donde queremos que corra la aplicacion 
EXPOSE 8080

#COPIAMOS EL ORIGEN 
COPY . .

#Descargamos las librerias del proyecto
RUN npm install

#Comando para la ejecucion  del proyecto 
CMD ["npm","start"]