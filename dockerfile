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

# Create a user (optional)
RUN useradd -ms /bin/bash ubuntu

# Set the working directory
WORKDIR /home/ubuntu

# Switch to the new user (optional)
USER ubuntu

# Default command to keep the container running
CMD ["tail", "-f", "/dev/null"]
