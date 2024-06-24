FROM nginx:stable-alpine3.19-slim
RUN rm -rf /usr/share/nginx/html/index.html
RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN chown -R nginx:nginx /usr/share/nginx/html \
    && chown -R nginx:nginx /etc/nginx \
    && chown -R nginx:nginx /var/log/nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY static /usr/share/nginx/html/
USER nginx