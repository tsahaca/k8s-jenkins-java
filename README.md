# Spring Boot demo project to deploy on Kubernetes using Jenkins and Helm 3

Example project on how to automatically deploy a Kotlin REST service on Kubernetes using a Jenkins pipeline.

## Requirements

- K8s Cluster
- Java
- Maven
- Docker
- Jenkins
- Helm

## Build

1. Build project
   ```
   mvn clean package
   ```
1. Build Docker image
   ```
   docker build -t k8s-jenkins-example .
   ```
