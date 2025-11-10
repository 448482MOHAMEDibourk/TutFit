# TutFit

Smart Expense tracking application built with FastAPI and React.

## Development Environment

### Prerequisites
- GitHub Codespaces (recommended) or Docker Desktop for local development

### Getting Started with Codespaces

1. Open this repository in GitHub Codespaces
2. The development container will automatically build and install all dependencies
3. Once the container is ready, start the development servers:

```bash
bash scripts/dev.sh
```

This will start:
- **Backend (FastAPI)** on port 8000: http://localhost:8000
- **Frontend (Vite + React)** on port 5173: http://localhost:5173

### Rebuilding the Container

If you need to rebuild the development container:

1. Open the Command Palette (Ctrl+Shift+P / Cmd+Shift+P)
2. Run: "Dev Containers: Rebuild Container"

### Using VS Code Tasks

You can also start services using VS Code tasks:

1. Open the Command Palette (Ctrl+Shift+P / Cmd+Shift+P)
2. Run: "Tasks: Run Task"
3. Choose one of:
   - **Backend: Dev** - Start only the backend server
   - **Frontend: Dev** - Start only the frontend server
   - **App: Dev** - Start both servers simultaneously

### API Documentation

Once the backend is running, visit:
- Swagger UI: http://localhost:8000/docs
- ReDoc: http://localhost:8000/redoc

### Health Check

Test the backend API:
```bash
curl http://localhost:8000/ping
```

Expected response:
```json
{"ok": true}
```

## Project Structure

```
TutFit/
├── .devcontainer/       # Development container configuration
├── .vscode/             # VS Code tasks and launch configurations
├── backend/             # FastAPI backend
│   └── app/
│       └── main.py      # Main FastAPI application
├── frontend/            # Vite + React frontend
├── scripts/             # Helper scripts
│   └── dev.sh          # Start both backend and frontend
└── README.md
```