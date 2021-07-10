FROM devilldon/py3-alpine:stable

WORKDIR /BOT

RUN chmod -R 777 /BOT

COPY requirements.txt .
export CRYPTOGRAPHY_DONT_BUILD_RUST=1
RUN pip install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
