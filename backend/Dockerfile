FROM node:20
EXPOSE 8080
RUN addgroup -S expense && adduser -S expense -G expense
ENV DB_HOST=mysql
WORKDIR /opt/server
RUN chown expense:expense /opt/server
USER expense
COPY package.json /opt/server/
COPY *.js /opt/server/
RUN npm install
CMD ["node", "index.js"]
