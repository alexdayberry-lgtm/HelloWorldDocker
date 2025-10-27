Overview

This project demonstrates how to use Docker to build and run a simple Java program inside a container.
It uses the OpenJDK 21 image as the base, ensuring the Java environment is consistent across all systems.
The goal is to compile and execute a Java program (HelloWorld.java) within a Docker container, independent of the local machine setup.

Project Structure
```
HelloWorldDocker/
├── .idea/
├── out/
│   └── production/
│       └── HelloWorldDocker/
│           └── HelloWorld.class
├── src/
│   └── HelloWorld.java
├── Dockerfile
└── README.md
```
Source Code
```
HelloWorld.java

public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, Docker and Java! - from Alex Dayberry");
    }
}
```
Dockerfile
```
# Use an official OpenJDK 21 image as the base image
FROM openjdk:21

# Create an application directory
RUN mkdir /app

# Copy compiled Java files into the container
COPY out/production/lab0/ /app

# Set working directory
WORKDIR /app

# Run the main class
CMD ["java", "HelloWorld"]
```
Build and Run Instructions
1️⃣ Build Java Project (in IntelliJ)

Go to Build → Build Project.
This creates the compiled class files inside out/production/lab0/.

2️⃣ Build the Docker Image

In the project directory, open a terminal and run:

docker build -t hello-java-21 .

```
-t hello-java-21 = tag name for the image
```
. = current directory as the build context

3️⃣ Run the Container
```
docker run hello-java-21
```

✅ Expected output:
```
Hello, Docker and Java! - from Alex Dayberry
```
Key Docker Concepts

Dockerfile – defines the steps to build the image

Image – a snapshot containing everything needed to run the app

Container – a running instance of an image

Base Image – starting point (e.g., openjdk:21)

Command – the action executed when the container starts (java HelloWorld)
