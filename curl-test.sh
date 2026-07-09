#!/bin/bash
curl -X POST http://127.0.0.1:5000/api/timeline_post -d "name=Smriti" -d "email=test@example.com" -d "content=Test post $(date +%s)"

curl http://127.0.0.1:5000/api/timeline_post
