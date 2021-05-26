FROM python:3.9-buster
WORKDIR /opt/app

RUN apt-get update && apt-get install -y \
    libopencv-dev \
    python3-opencv\
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


COPY requirements.lock /opt/app
RUN pip3 install -r requirements.lock
