FROM nginx:1.13.9-alpine

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash

CMD ["nginx"]

# CMD ["usr/share/nginx/sbin/nginx", "-g", "daemon off;"]

EXPOSE 80