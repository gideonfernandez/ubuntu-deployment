# Use the official Ubuntu image from Docker Hub
FROM ubuntu:latest

# Set environment variables to non-interactive to avoid prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /home/ubuntu

# Switch to the existing 'ubuntu' user
USER ubuntu

# Default command to keep the container running
CMD ["tail", "-f", "/dev/null"]
