FROM resin/raspberry-pi-python

# Install Python.
RUN apt-get update && apt-get install -y python

COPY . /app

CMD ["python", "-m", "SimpleHTTPServer", "80"]
