# Jenkins-Docker
This repository provides a step-by-step guide on how to install and run Jenkins locally using Docker. Follow the instructions below to get Jenkins up and running in your local environment

# Step 1: Build Dockerfile

The first step is to build the Dockerfile.This will create an image for our Jenkins server with dokcer installed inside this container.

``` docker build -t jenkins [PATH-TO-DOCKERFILE] ```

# Step 2: Start the Jenkins Container

``` docker run -p 8080:8080 -p 50000:50000 -v "/c/Users/Theodoros/Desktop/Install Jenkins/Jenkins-Docker:/var/jenkins_home" jenkins/jenkins ```

In this command, the -p option maps the port 8080 on the host to port 8080 in the container, and the port 50000 on the host to port 50000 in the container. The -v option maps the host directory /your/home to the container directory /var/jenkins_home, which is used to store the Jenkins data.

# Step 3: Access the Jenkins Dashboard

Once the Jenkins container is up and running, you can access the Jenkins dashboard by visiting http://localhost:8080 in your web browser. You will be prompted to enter a password, which you can find in the Jenkins logs.

``` docker logs [container_id] ```

In the logs, you will see a line similar to the following: 

Jenkins initial setup is required. An admin user has been created and a password generated.
Please use the following password to proceed to installation: [password]

# Step 4: Install Plugins

Jenkins provides a plugin system that allows you to extend its functionality and integrate with other tools. To install plugins, go to the Jenkins dashboard, click on the “Manage Jenkins” option, and then click on the “Manage Plugins” option. From here, you can install and manage plugins.
