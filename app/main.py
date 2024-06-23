from typing import Union
from fastapi import FastAPI
from app.routers.calculator import router as calculation_router

app = FastAPI()

# root endpoint
@app.get("/")
def read_root():
    return {"This is working better!"}

app.include_router(calculation_router)
