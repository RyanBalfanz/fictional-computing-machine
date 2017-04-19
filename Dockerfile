FROM resin/raspberry-pi-python

# Install Python.
RUN apt-get update && apt-get install -y python

RUN mkdir /app
WORKDIR /app
ADD requirements.txt /app/
ADD . /app/
RUN pip install -r requirements.txt

CMD ["python", "server.py"]
