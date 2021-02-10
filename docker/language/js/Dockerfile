FROM node:carbon-alpine

RUN apk update \
    && apk add --no-cache zsh \
    && npm i -g yarn

WORKDIR /var/www/app/front

CMD ["node"]