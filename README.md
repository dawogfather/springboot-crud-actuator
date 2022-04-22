### Spring Boot REST API CRUD and Actuators Dockerified

Spring boot app with a basic todos rest api



#### Get ENV vars

$ curl 'http://localhost:8080/actuator/env' -i -X GET | jq .

#### Get Todos

$ curl 'http://localhost:8080/api/todos' -i -X GET | jq .
