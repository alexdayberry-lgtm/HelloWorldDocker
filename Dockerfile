# Use an official OpenJDK 21 image as the base image
FROM openjdk:23

# Create an application directory
WORKDIR /app

# Copy compiled Java files into the container
COPY src/ /app/

# Set working directory
RUN javac *.java

# Run the main class
CMD ["java", "HelloWorld"]