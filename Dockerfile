FROM python:3.7-alpine
# Build the image from the parent
MAINTAINER Ashwani

ENV PYTHONUNBUFFERED 1
# send the output directly to the terminal or logs
# it makes the logs realtime and prevents the case when logs are never sent(incase of app crash)


COPY ./requirements.txt /requirements.txt
# copy local requirements to image
RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app
# copy app data to the image

RUN adduser -D user
USER user

