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

# Add the script to fix DNS resolution issues
COPY fix-dns.sh /opt/server/
RUN chmod +x /opt/server/fix-dns.sh

# Run the DNS fix script as root before switching to the non-root user
RUN /opt/server/fix-dns.sh

USER expense

CMD [ "node","index.js" ]
