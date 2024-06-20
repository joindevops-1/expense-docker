FROM node:20
EXPOSE 8080
RUN adduser expense
ENV DB_HOST=mysql
WORKDIR /opt/server
RUN chown expense:expense /opt/server
COPY package.json /opt/server/
COPY *.js /opt/server/
RUN npm install
CMD ["node", "index.js"]
