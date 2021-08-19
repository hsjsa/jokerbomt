FROM python:3.6-slim

RUN apt-get update
RUN apt-get install -y apt-utils build-essential gcc

WORKDIR /root/mrjoker

COPY . .

RUN pip install -U -r requirements.txt

CMD ["python3","-m","mrjoker"]
