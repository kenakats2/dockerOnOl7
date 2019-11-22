#!/bin/bash

# Create docker repo
sudo tee /etc/yum.repos.d/dvd.repo << EOF
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/oraclelinux/7
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

# Install docker-engine
sudo yum install -y docker-engine

# Start docker
sudo systemctl start docker.service

# Set auto start docker
sudo systemctl enable docker.service
