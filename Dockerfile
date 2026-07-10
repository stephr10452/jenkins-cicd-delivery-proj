FROM python:3.12-slim

WORKDIR /app

COPY Stephanie.Reyes.py .

CMD ["python3", "Stephanie.Reyes.py"]
