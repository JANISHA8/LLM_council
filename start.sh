#!/bin/bash

# LLM Council Startup Script

echo "Starting LLM Council..."
echo ""

# Start backend
echo "Starting backend on http://localhost:8001..."
uv run python -m \backend.main &
BACKEND_PID=$!

# Wait for backend to start
sleep 2

# Start frontend
echo "Starting frontend on http://localhost:5173..."
cd frontend
npm run dev &
FRONTEND_PID=$!

echo ""
echo "LLM Council is running!"
echo "Backend: http://localhost:8001"
echo "Frontend: http://localhost:5173"
echo ""
echo "Press Ctrl+C to stop both servers."

# wait for ctrl+c
trap "kill $BACKEND_PID $FRONTEND_PID 2>/dev/null; exit" SIGINT SIGTERM
wait
