FROM python:3.8.3-slim-buster

WORKDIR /app

RUN apt update -y
RUN apt install python3 -y
RUN apt install python3-pip -y

#RUN apt install git -y
#RUN git clone https://gitlab.com/anjanpaul1/two-tire-application.git /app
ADD . /app
RUN pip3 install -r requirements.txt

ENV FLASK_APP=app.py


CMD [ "flask","run","--host","0.0.0.0" ]