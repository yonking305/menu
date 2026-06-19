.PHONY: build run clean

build:
	go build -o bin/server ./cmd/

run:
	go run ./cmd/

clean:
	rm -rf bin/

docker-build:
	docker build -t menu:latest .

docker-run:
	docker run -p 8081:8081 menu:latest

test:
	go test ./...
