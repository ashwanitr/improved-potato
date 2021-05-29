FROM python:3.7-alpine
MAINTAINER Ashwani

ENV PYTHONUNBUFFERED 1
# send the output directly to the terminal or logs
# it makes the logs realtime and prevents the case when logs are never sent(incase of app crash)


COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user

