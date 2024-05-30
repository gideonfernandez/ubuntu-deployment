# Use the official Ubuntu base image
FROM ubuntu:20.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update and install basic packages
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    sudo \
    wget \
    curl \
    vim \
    git \
    net-tools \
    && apt-get clean

# Set up a user (optional)
RUN useradd -m -s /bin/bash ubuntu && echo "ubuntu:ubuntu" | chpasswd && adduser ubuntu sudo

# Set the default command to run when starting the container
CMD ["/bin/bash"]
