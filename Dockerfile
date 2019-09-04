FROM python:3.7-alpine
MAINTAINER Alejandro Gleason M

ENV PYTHONUNBUFFERED 1

#Dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

#Create the dir, and switch to that one
RUN mkdir /app
WORKDIR /app
#Copies into Docker image
COPY ./app /app

#Create the user that runs the app
RUN adduser -D user
USER user