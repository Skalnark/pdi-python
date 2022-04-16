FROM python:3

WORKDIR /usr/src/app

COPY . .

RUN apt update -y && apt install ffmpeg libsm6 libxext6  -y
RUN pip install --no-cache-dir -r requirements.txt