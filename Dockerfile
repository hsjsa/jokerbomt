FROM python:3.8.5-buster

WORKDIR /root/mrjoker

COPY . .

RUN pip install -U -r requirements.txt

CMD ["python3","-m","mrjoker"]
