# Dockerfile for our flask application
from python:stretch

copy . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt

ENTRYPOINT ["python", "main.py"]

