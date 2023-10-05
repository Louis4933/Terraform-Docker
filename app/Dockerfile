FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

WORKDIR /app

COPY . /app

RUN pip install fastapi==0.103.2

CMD ["uvicorn", "tp-fastapi:app", "--host", "0.0.0.0", "--port", "8000"]
