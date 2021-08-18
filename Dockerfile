FROM debian:latest

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y ffmpeg python3-pip curl
RUN pip3 install --upgrade pip setuptools

COPY . .

RUN pip3 install -U -r requirements.txt

CMD ["python3","-m","mrjoker"]
