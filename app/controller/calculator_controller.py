from fastapi import APIRouter

router = APIRouter()

@router.post("/calculator/")
def sum(number1: int, number2: int):
    return {"Result": number1 + number2}

