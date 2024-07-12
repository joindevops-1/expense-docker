FROM node:20.15.0-buster-slim

EXPOSE 8080
ENV DB_HOST=mysql

RUN addgroup --system expense && adduser --system --ingroup expense \
    && mkdir /opt/server \
    && chown expense:expense -R /opt/server

WORKDIR /opt/server
COPY package.json .
COPY *.js /opt/server/
RUN npm install

USER expense

ENTRYPOINT ["node", "index.js"]
