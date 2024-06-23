from fastapi.testclient import TestClient

from .main import app

client = TestClient(app)

def test_read_main():
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == ["This works!"]
    
def test_sum():
    response = client.post("/calculator/sum?number1=2&number2=2")
    assert response.is_success == True
    assert response.json() == 4
    
def test_subtract():
    response = client.post("/calculator/subtract?number1=2&number2=2")
    assert response.is_success == True
    assert response.json() == 0
    
def test_multiply():
    response = client.post("/calculator/multiply?number1=2&number2=8")
    assert response.is_success == True
    assert response.json() == 16
    
def test_divide():
    response = client.post("/calculator/divide?number1=2&number2=2")
    assert response.is_success == True
    assert response.json() == 1.0