# Imagen base con Java 11
FROM openjdk:11-jdk

# Instalar Maven
RUN apt-get update && apt-get install -y maven

# Crear carpeta de la app
WORKDIR /app

# Copiar archivos del proyecto
COPY . .

# Compilar el proyecto
RUN mvn clean package

# Ejecutar la aplicación usando webapp-runner y Tomcat embebido
CMD ["java", "-jar", "target/dependency/webapp-runner.jar", "target/*.war"]
