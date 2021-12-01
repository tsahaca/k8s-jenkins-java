FROM openjdk:8-jdk-alpine
# Add a new user "app_user" with user id 8877
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
# Change to non-root privilege
USER appuser
EXPOSE 8090
ADD /target/k8s-jenkins-example*.jar k8s-jenkins-example.jar
ENTRYPOINT ["java", "-jar", "k8s-jenkins-example.jar"]