FROM python:3.12.2

WORKDIR /app

COPY app.py .

CMD ["python", "app.py"]
