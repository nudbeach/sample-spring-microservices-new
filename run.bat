@Echo Off

Set JAVA_HOME=c:\Java\jdk1.8.0_202\
Set OPT1=--spring.profiles.active=native

start java -jar config-service/target/config-service-1.0-SNAPSHOT.jar %OPT1%

timeout /t 10 /nobreak

start java -jar discovery-service/target/discovery-service-1.0-SNAPSHOT.jar %OPT1%
start java -jar gateway-service/target/gateway-service-1.0-SNAPSHOT.jar %OPT1%
start java -jar proxy-service/target/proxy-service-1.0-SNAPSHOT.jar %OPT1%

start java -jar department-service/target/department-service-1.0-SNAPSHOT.jar %OPT1%
start java -jar employee-service/target/employee-service-1.0-SNAPSHOT.jar %OPT1%
start java -jar organization-service/target/organization-service-1.0-SNAPSHOT.jar %OPT1%

