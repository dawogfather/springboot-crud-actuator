### Spring Boot REST API CRUD and Actuators Dockerified

Spring boot app with a basic todos rest api and the actuators all turned on


### Build app 
build with jdk 11+

`$ ./gradlew build`

### Build docker container

`$ docker build --build-arg JAR_FILE=build/libs/\*.jar -t springboot-crud-actuator:latest .`


#### Create and run docker container
`$ docker run --name springboot-crud-actuator -d -p 8080:8080 springboot-crud-actuator:latest`

OR run latest image from docker hub with... 
`$ docker run -d -p 8080:8080 dawogfather/springboot-crud-actuator:latest`


#### Push to docker hub
`$ docker login`

`$ docker tag springboot-crud-actuator:latest <username>/springboot-crud-actuator:latest`

`$ docker push <username>/springboot-crud-actuator:latest`

### Use App 

#### Get ENV vars

`$ curl 'http://localhost:8080/actuator/env' -i -X GET | jq .`

#### Get Todos

`$ curl 'http://localhost:8080/api/todo' -i -X GET | jq .`

#### Create TODO

`curl -X POST -H "Content-Type: application/json" -d '{"title":"Keep being awesome", "description":"Complete assignments", "todoStatus":"NOT_COMPLETED"}' http://localhost:8080/api/v1/todo`

#### Update TODO
`curl -X PUT -H "Content-Type: application/json" -d '{"title":"Go to school mate", "description":"Complete assignments", "todoStatus":"COMPLETED"}' http://localhost:8080/api/v1/todo/2`

#### Delete TODO
`curl -X DELETE -H "Content-Type: application/json" http://localhost:8080/api/v1/todo/2`