FROM nginx:stable-alpine3.19-slim
RUN rm -rf /usr/share/nginx/html/index.html
RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/default.conf
# RUN mkdir -p /var/cache/nginx /var/run/nginx \
#     && chown -R nginx:nginx /usr/share/nginx/html \
#     && chown -R nginx:nginx /etc/nginx \
#     && chown -R nginx:nginx /var/log/nginx \
#     && chown -R nginx:nginx /var/cache/nginx \
#     && chown -R nginx:nginx /var/run/nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY static /usr/share/nginx/html/
USER nginx