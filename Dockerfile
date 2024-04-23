FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y python3-pip

WORKDIR /parcs

COPY . /parcs

RUN pip install -r requirements.txt

CMD ["./run.sh"]
