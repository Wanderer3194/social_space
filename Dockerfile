FROM python:3.7-alpine
MAINTAINER Wanderer3194

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /social
WORKDIR /social
COPY ./social /social

RUN adduser -D user
USER user


