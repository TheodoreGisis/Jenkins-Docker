# Use the official Jenkins image as the base
FROM jenkins/jenkins:lts

USER root

# Install Docker
RUN apt-get update && apt-get install -y docker.io

# Start the Docker daemon
RUN dockerd &

# Expose the Docker socket
VOLUME /var/run/docker.sock:/var/run/docker.sock

