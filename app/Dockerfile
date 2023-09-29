FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

WORKDIR /app

COPY ./app /app

RUN pip install -r requirements.txt

CMD ["uvicorn", "tp-fastapi:app", "--host", "0.0.0.0", "--port", "8000"]
