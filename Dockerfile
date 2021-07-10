FROM devilldon/py3-alpine:stable

WORKDIR /BOT

RUN chmod -R 777 /BOT

COPY requirements.txt .
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
