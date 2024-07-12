FROM node:20.15.0-alpine3.20

EXPOSE 8080
ENV DB_HOST=mysql

RUN addgroup -S expense && adduser -S expense -G expense \
    && mkdir /opt/server \
    && chown expense:expense -R /opt/server

WORKDIR /opt/server
COPY package.json .
COPY *.js /opt/server/
RUN npm install

# Add the script to fix DNS resolution issues and start the application
COPY entrypoint.sh /opt/server/
RUN chmod +x /opt/server/entrypoint.sh

USER expense

ENTRYPOINT ["/opt/server/entrypoint.sh"]
