from typing import Union
from fastapi import FastAPI
from routers.calculator import router as calculation_router

app = FastAPI()

# root endpoint
@app.get("/")
def read_root():
    return {"This works!"}

app.include_router(calculation_router)
