#!/bin/bash

sudo apt update -y

sudo apt install nginx -y

sudo systemctl start nginx
sudo systemctl enable nginx

# Modify /etc/hosts to simulate DNS resolution
echo "127.0.0.1 internal.example.com" | sudo tee -a /etc/hosts

curl http://internal.example.com
