# Dockerfile for our flask application
from python:3.6

copy . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "application:APP"]

