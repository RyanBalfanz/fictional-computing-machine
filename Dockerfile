FROM resin/raspberry-pi-python:3

# Enable systemd
ENV INITSYSTEM on

RUN mkdir /app
ADD requirements.txt /app/
ADD . /app/
WORKDIR /app
RUN pip install -r requirements.txt
RUN git clone https://github.com/pimoroni/unicorn-hat

CMD ["python", "-m", "http.server"]
