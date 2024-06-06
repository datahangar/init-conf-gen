FROM python:3.9-slim

WORKDIR /

#First install deps
COPY ./requirements.txt /
RUN pip3 install --no-cache-dir --upgrade -r /requirements.txt

#Cleanup
RUN rm -rf /var/cache/apt/archives /var/lib/apt/lists/*
