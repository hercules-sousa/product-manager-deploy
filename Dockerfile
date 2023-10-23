# Use a imagem oficial do Tomcat como base
FROM tomcat:10.1.15

# Copie o WAR da sua aplicação para a pasta webapps do Tomcat
COPY target/product-manager-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/

# Exponha a porta que o Tomcat irá usar (geralmente 8080)
EXPOSE 8080

# Inicie o Tomcat
CMD ["catalina.sh", "run"]
