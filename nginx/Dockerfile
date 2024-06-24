FROM nginx:stable-alpine3.19-slim
RUN chown -R nginx:nginx /usr/share/nginx/html \
    && chown -R nginx:nginx /etc/nginx \
    && chown -R nginx:nginx /var/log/nginx
USER nginx