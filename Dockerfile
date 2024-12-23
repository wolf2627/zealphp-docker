# Use the latest Ubuntu image
FROM ubuntu:latest

# Set noninteractive mode for APT and timezone
ARG DEBIAN_FRONTEND=noninteractive

# Update the package repository
RUN apt-get update && apt-get install -y

# Copy the scripts to the container
COPY ./scripts /var/scripts/
RUN chmod +x /var/scripts/* && /var/scripts/consetup.sh

RUN rm -rf /var/scripts

# Set the working directory back to the project directory
WORKDIR /home/zealphp/app

USER zealphp

# Expose the application port
EXPOSE 8080
