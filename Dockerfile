FROM devilldon/py3-alpine:stable

WORKDIR /BOT

RUN chmod -R 777 /BOT

RUN pip3 install --upgrade pip
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
