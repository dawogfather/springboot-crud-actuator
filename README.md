### Spring Boot REST API CRUD and Actuators Dockerified

Spring boot app with a basic todos rest api



#### Get ENV vars

$ curl 'http://localhost:8080/actuator/env' -i -X GET | jq .

#### Get Todos

$ curl 'http://localhost:8080/api/todo' -i -X GET | jq .


### build docker container
$./gradlew build

$ docker build --build-arg JAR_FILE=build/libs/\*.jar -t springboot-crud-actuator:latest .


#### create and run docker container
$ docker run --name springboot-crud-actuator -d -p 8080:8080 springboot-crud-actuator:latest


#### push to docker hub
$ docker login

$ docker tag springboot-crud-actuator:latest <username>/springboot-crud-actuator:latest

$ docker push <username>/springboot-crud-actuator:latest