FROM node:lts-alpine

RUN apk add --no-cache bash git \
  && npm install --global --unsafe-perm apollo \
  && npm cache clean --force

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["help", "--all"]