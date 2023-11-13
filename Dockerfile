FROM ghcr.io/osgeo/gdal:ubuntu-small-3.8.0

RUN apt-get update && apt-get -y install python3-pip

RUN mkdir /code
WORKDIR /code

COPY requirements.txt /code

RUN pip install -r requirements.txt

COPY datasets /code/datasets
COPY src /code/src
COPY tests /code/tests
COPY go.sh /code/go.sh
