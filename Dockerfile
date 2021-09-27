FROM ubuntu:14.04
ADD ./requirements.txt /tmp/
RUN DEBIAN_FRONTEND=noninterative apt-get install -y -q python all python-pip
RUN pip install -qr /tmp/requirements.txt
ADD ./ /opt/webapp
WORKDIR /opt/webapp
EXPOSE 5000
RUN ["python", "app.py"]