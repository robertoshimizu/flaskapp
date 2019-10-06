FROM python:3.7-slim-buster

RUN apt-get update && apt-get install -y libpq-dev gcc



LABEL maintainer "Roberto Shimizu"

RUN mkdir -p /usr/src/app

COPY requirements.txt /usr/src/app/

WORKDIR usr/src/app

# install mysql

RUN apt-get install -y default-mysql-server default-libmysqlclient-dev

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get autoremove -y gcc

COPY . /usr/src/app

ENV FLASK_ENV="docker"

# Expose the Flask port
EXPOSE 5000

#CMD [ "python", "./app.py" ]

RUN /etc/init.d/mysql restart

