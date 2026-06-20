.PHONY: build run clean test docker-build docker-run

build:
	mvn clean package -DskipTests

run:
	mvn spring-boot:run

clean:
	mvn clean

test:
	mvn test

docker-build:
	docker build -t menu:latest .

docker-run:
	docker run -p 8081:8081 menu:latest
