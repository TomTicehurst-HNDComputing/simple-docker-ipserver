FROM php:latest

RUN apt update && apt install -y curl gettext-base && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /scripts

COPY index.php index.php

CMD ["sh", "-c", "php -S 0.0.0.0:8080 -t /scripts"]
