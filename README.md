# HelloWorld Docker Automation

This project demonstrates automating Docker image builds and deployments using GitHub Actions.

## How It Works
- The `Dockerfile` compiles and runs the Java program to and inside Docker.
- GitHub Actions automatically builds and pushes the image to Docker Hub when code is pushed.

## Commands
```bash
docker build -t hello-java .
docker run hello-java
****