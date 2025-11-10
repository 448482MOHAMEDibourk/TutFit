from fastapi import FastAPI

app = FastAPI(title="TutFit API")


@app.get("/ping")
async def ping():
    """Health check endpoint"""
    return {"ok": True}
