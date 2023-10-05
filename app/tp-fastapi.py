from fastapi import FastAPI

# Create a FastAPI application instance
app = FastAPI()

# Define an endpoint for the main route "/"
@app.get("/")
def read_root():
    return {"message": "Bienvenue sur mon API FastAPI"}
