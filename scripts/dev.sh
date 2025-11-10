#!/bin/bash
set -euo pipefail

echo "=== Starting TutFit Development Servers ==="

# Function to cleanup background processes on exit
cleanup() {
  echo ""
  echo "=== Stopping development servers ==="
  jobs -p | xargs -r kill 2>/dev/null || true
}
trap cleanup EXIT

# Start backend
echo "Starting backend on port 8000..."
cd backend
uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload &
BACKEND_PID=$!
cd ..

# Start frontend
echo "Starting frontend on port 5173..."
cd frontend
npm run dev -- --host 0.0.0.0 &
FRONTEND_PID=$!
cd ..

echo ""
echo "=== Development servers started ==="
echo "Backend:  http://localhost:8000"
echo "Frontend: http://localhost:5173"
echo "Press Ctrl+C to stop both servers"
echo ""

# Wait for both processes
wait
