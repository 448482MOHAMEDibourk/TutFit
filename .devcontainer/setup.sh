#!/bin/bash
set -euo pipefail

echo "=== TutFit Development Environment Setup ==="

# Install backend dependencies
if [ -f "backend/requirements.txt" ]; then
  echo "Installing backend dependencies..."
  pip install -r backend/requirements.txt
else
  echo "Warning: backend/requirements.txt not found"
fi

# Initialize frontend if it doesn't exist
if [ ! -f "frontend/package.json" ]; then
  echo "Initializing Vite React TypeScript frontend..."
  npm create vite@latest frontend -- --template react-ts
  cd frontend
  npm install
  cd ..
else
  echo "Frontend already exists, installing dependencies..."
  cd frontend
  npm install
  cd ..
fi

echo "=== Setup Complete ==="
echo "Run 'bash scripts/dev.sh' to start both backend and frontend"
