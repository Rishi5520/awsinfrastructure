#!/bin/bash

# Update aur zaroori dependencies install karo
sudo yum update -y
sudo yum install -y nodejs git

# Puranay code ko remove kar do agar pehle se exist karta hai
if [ -d "/home/ec2-user/app" ]; then
  sudo rm -rf /home/ec2-user/app
fi

# GitHub se latest application code pull karo
git clone https://github.com/your-username/your-repo.git /home/ec2-user/app

# App ke folder me jao
cd /home/ec2-user/app

# Dependencies install karo (agar Node.js app hai to)
npm install

# Application ko start karo
nohup node server.js > app.log 2>&1 &
