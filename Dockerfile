# Imagen base oficial con Maven y Java 11
FROM maven:3.8.7-openjdk-11

# Crear carpeta de trabajo
WORKDIR /app

# Copiar todo el proyecto
COPY . .

# Compilar el proyecto con Maven
RUN mvn clean package

# Ejecutar la aplicación usando webapp-runner y Tomcat embebido
CMD ["java", "-jar", "target/dependency/webapp-runner.jar", "target/*.war"]
