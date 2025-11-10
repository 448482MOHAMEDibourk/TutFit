#!/bin/bash
set -euo pipefail

echo "🚀 Starting TutFit development environment setup..."

# Install backend dependencies
if [ -f "backend/requirements.txt" ]; then
  echo "📦 Installing Python dependencies..."
  pip install --user -r backend/requirements.txt
else
  echo "⚠️  backend/requirements.txt not found, skipping Python dependencies"
fi

# Initialize frontend if it doesn't exist
if [ ! -d "frontend" ]; then
  echo "🎨 Initializing Vite React TypeScript frontend..."
  npm create vite@latest frontend -- --template react-ts
  cd frontend
  npm install
  cd ..
elif [ -f "frontend/package.json" ]; then
  echo "📦 Installing frontend dependencies..."
  cd frontend
  npm install
  cd ..
else
  echo "⚠️  frontend directory exists but package.json not found, skipping"
fi

echo "✅ Setup complete! Run 'bash scripts/dev.sh' to start development servers."
