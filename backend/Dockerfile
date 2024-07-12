FROM node:20.15.0-alpine3.20

EXPOSE 8080
ENV DB_HOST=mysql

# Install glibc
RUN apk --no-cache add libc6-compat

RUN addgroup -S expense && adduser -S expense -G expense \
    && mkdir /opt/server \
    && chown expense:expense -R /opt/server

WORKDIR /opt/server
COPY package.json .
COPY *.js /opt/server/
RUN npm install

COPY entrypoint.sh /opt/server/
RUN chmod +x /opt/server/entrypoint.sh

USER expense

ENTRYPOINT ["/opt/server/entrypoint.sh"]
