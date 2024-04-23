FROM debian:stretch-slim

RUN echo "deb http://security.debian.org/debian-security bullseye-security main contrib non-free" > /etc/apt/sources.list

RUN apt-get update
RUN apt-get -y install python-pip python-dev

WORKDIR /parcs

COPY . /parcs

RUN pip install -r requirements.txt

CMD ["./run.sh"]
