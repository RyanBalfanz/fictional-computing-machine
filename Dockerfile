FROM resin/raspberry-pi-python:3

# Enable systemd
ENV INITSYSTEM on

# Install Python.
# RUN apt-get update && apt-get install -y python python3-pip python3-dev

RUN mkdir /app
ADD requirements.txt /app/
ADD . /app/
WORKDIR /app
RUN pip install -r requirements.txt

# CMD ["python", "server.py"]
CMD ["python", "-m", "http.server"]
