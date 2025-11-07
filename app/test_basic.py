from app import app

def test_home_route():
    client = app.test_client()
    response = client.get('/')
    assert response.status_code == 200
    assert b"CI/CD pipeline test - new version deployed manually!!!" in response.data
