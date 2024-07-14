# Use a Debian-based image as the base image
FROM debian:latest

# Update package list and install necessary packages
RUN apt update && \
    apt install -y \
    iputils-ping \
    dnsutils \
    traceroute \
    curl \
    wget \
    net-tools \
    vim \
    jq \
    unzip \
    git \
    software-properties-common \
    mysql-client

# Install Terraform
RUN wget https://releases.hashicorp.com/terraform/1.5.2/terraform_1.5.2_linux_amd64.zip && \
    unzip terraform_1.5.2_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_1.5.2_linux_amd64.zip

# Cleanup
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /root

# Default command to run when the container starts
CMD ["bash"]
