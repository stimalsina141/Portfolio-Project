#!/bin/bash

# Go to project directory
cd ~/Portfolio-Project

# Pull latest changes from GitHub
git fetch && git reset origin/main --hard

# Activate virtual environment and install dependencies
source python3-virtualenv/bin/activate
pip install -r requirements.txt

# Restart the systemd service
systemctl restart myportfolio
