FROM nginx
RUN rm -rf /usr/share/nginx/html/index.html
COPY expense.conf /etc/nginx/default.d/nginx.conf
ADD static /usr/share/nginx/html/