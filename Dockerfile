FROM python:3

RUN echo "deb http://security.debian.org/debian-security bullseye-security main contrib non-free" > /etc/apt/sources.list

RUN apt-get update

WORKDIR /parcs

COPY . /parcs

RUN pip install -r requirements.txt

CMD ["./run.sh"]
