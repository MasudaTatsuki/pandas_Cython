FROM python:3.9

WORKDIR /app

SHELL ["/bin/bash", "-c"]

RUN apt-get update &

RUN pip install --upgrade pip 

RUN pip install notebook

RUN pip install pandas

RUN pip install cython

RUN pip install numpy
