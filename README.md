# TutFit

Smart Expense Tracking Application

## Development Environment

This project uses GitHub Codespaces with a devcontainer for a consistent development environment.

### Getting Started

1. **Open in Codespaces**: Click "Code" → "Codespaces" → "Create codespace on [branch]"
2. **Wait for Setup**: The devcontainer will automatically install all dependencies (Python packages, Node modules)
3. **Start Development Servers**: Run one of the following:

   ```bash
   # Option 1: Use the helper script (recommended)
   bash scripts/dev.sh

   # Option 2: Use VS Code tasks (Run > Run Task > "App: Dev")
   ```

### Available Ports

- **Backend (FastAPI)**: http://localhost:8000
  - API Documentation: http://localhost:8000/docs
  - Health Check: http://localhost:8000/ping
- **Frontend (Vite React)**: http://localhost:5173

### VS Code Tasks

- **Backend: Dev** - Start only the FastAPI backend server
- **Frontend: Dev** - Start only the Vite frontend dev server
- **App: Dev** - Start both backend and frontend servers

### Rebuilding the Container

If you need to rebuild the devcontainer after making changes to `.devcontainer/devcontainer.json`:

1. Press `F1` or `Cmd/Ctrl+Shift+P`
2. Type and select: "Dev Containers: Rebuild Container"
3. Wait for the rebuild and automatic setup to complete

### Project Structure

```
TutFit/
├── .devcontainer/        # Devcontainer configuration
│   ├── devcontainer.json # Container setup and VS Code extensions
│   └── setup.sh          # Automatic dependency installation
├── backend/              # FastAPI backend
│   ├── app/
│   │   ├── __init__.py
│   │   └── main.py       # FastAPI application with /ping endpoint
│   └── requirements.txt  # Python dependencies
├── frontend/             # Vite React TypeScript frontend
├── scripts/
│   └── dev.sh            # Helper script to run both servers
└── .vscode/              # VS Code configurations
    ├── tasks.json        # Development tasks
    └── launch.json       # Debug configurations
```

### Tech Stack

- **Backend**: FastAPI, Python 3.11, Uvicorn, SQLAlchemy, Pydantic, Alembic
- **Frontend**: React, TypeScript, Vite
- **Development**: GitHub Codespaces, VS Code