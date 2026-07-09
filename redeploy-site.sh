#!/bin/bash
# Kill existing tmux session if it exists
tmux kill-session -t flask-app 2>/dev/null

# Go to project directory
cd ~/Portfolio-Project

# Pull latest changes from GitHub
git fetch && git reset origin/main --hard

# Activate virtual environment and install dependencies
source python3-virtualenv/bin/activate
pip install -r requirements.txt

# Start new detached tmux session with Flask
tmux new-session -d -s flask-app "cd ~/Portfolio-Project && source python3-virtualenv/bin/activate && flask run --host=0.0.0.0"
