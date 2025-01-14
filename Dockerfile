# syntax=docker/dockerfile:1
   
FROM python:3.9-slim-bullseye
WORKDIR /src

COPY ./telegram-messaging-bot.py .
COPY ./requirements.txt .

RUN pip install -r requirements.txt
CMD ["python", "telegram-messaging-bot.py"]
