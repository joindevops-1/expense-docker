FROM node:20

EXPOSE 8080
ENV DB_HOST=mysql


WORKDIR /opt/server
COPY package.json .
COPY *.js /opt/server/
RUN npm install

ENTRYPOINT ["node", "index.js"]
