FROM ubuntu:14.04

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y python-pip python-dev libgdal-dev gdal-bin swig
RUN pip install numpy
RUN pip install -r requirements.txt

WORKDIR /work
COPY ./ /work

RUN pip install .
