FROM python:3.7
RUN apt update && apt install -y xinetd
RUN useradd -m test
COPY xinetd /etc/xinetd.d/test
COPY test.py /
RUN /usr/bin/python3 /test.py
CMD ["xinetd", "-dontfork"]
