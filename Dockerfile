ARG NGINX_VERSION=1.31.8

# Version locked to 1.31.8 for now, was originally using base alpine image.
FROM nginx:${NGINX_VERSION}-alpine-slim

# Only setup the timezone
# https://www.programmersought.com/article/72575663274/
RUN apk add -U tzdata && cp /usr/share/zoneinfo/America/New_York /etc/localtime && apk del tzdata

# https://www.rockyourcode.com/run-docker-nginx-as-non-root-user/
# Add permissions for nginx user
RUN chown -R nginx:nginx /var/cache/nginx && \
        chown -R nginx:nginx /var/log/nginx && \
        chown -R nginx:nginx /etc/nginx/conf.d
RUN touch /var/run/nginx.pid && \
        chown -R nginx:nginx /var/run/nginx.pid

# Switch to nginx non-root user
USER nginx
