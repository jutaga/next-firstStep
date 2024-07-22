# Usa la imagen base oficial de Node.js con Alpine Linux
FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia solo los archivos necesarios para instalar las dependencias
COPY package.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos del proyecto
COPY . .

# Construye el proyecto
RUN npm run build

# Expone el puerto en el que la aplicación correrá
EXPOSE 3000

# Comando para correr la aplicación
CMD ["npm", "start"]
