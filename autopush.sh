#!/bin/bash
while true
do
  git add .
  git diff --cached --quiet || git commit -m "autosave $(date '+%Y-%m-%d %H:%M:%S')"
  git push
  sleep 300
done