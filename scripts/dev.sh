#!/bin/bash
set -euo pipefail

echo "🚀 Starting TutFit development servers..."

# Function to cleanup background processes on exit
cleanup() {
  echo "🛑 Stopping development servers..."
  kill $(jobs -p) 2>/dev/null || true
  exit
}

trap cleanup SIGINT SIGTERM EXIT

# Start backend
echo "🐍 Starting FastAPI backend on http://localhost:8000..."
cd backend
uvicorn app.main:app --reload --host 0.0.0.0 --port 8000 &
BACKEND_PID=$!
cd ..

# Start frontend
echo "⚛️  Starting Vite frontend on http://localhost:5173..."
cd frontend
npm run dev -- --host 0.0.0.0 &
FRONTEND_PID=$!
cd ..

echo ""
echo "✅ Development servers started!"
echo "   Backend:  http://localhost:8000"
echo "   Frontend: http://localhost:5173"
echo "   API Docs: http://localhost:8000/docs"
echo ""
echo "Press Ctrl+C to stop all servers..."

# Wait for both processes
wait $BACKEND_PID $FRONTEND_PID
