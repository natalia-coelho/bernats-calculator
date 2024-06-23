from fastapi import APIRouter

router = APIRouter()

@router.post("/calculator/sum")
def sum(number1: int, number2: int):
    return number1 + number2

@router.post("/calculator/subtract")
def subtract(number1: int, number2: int):
    return number1 - number2

@router.post("/calculator/multiply")
def multiply(number1: int, number2: int):
    return number1 * number2

@router.post("/calculator/divide")
def divide(number1: int, number2: int):
    return number1 / number2