FROM ubuntu:20.04
RUN apt-get update -y && \
    apt-get install -y python3 python3-pip
WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
RUN python3 -m pip install -r requirements.txt
COPY . /app/
RUN ls /app
CMD [ "python3", "/app/app.py" ]