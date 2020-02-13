ARG DISCOURSE_VERSION
FROM indiehosters/discourse:${DISCOURSE_VERSION} as discourse
FROM nginx
COPY --from=discourse /home/discourse/discourse/public /home/discourse/discourse/public
VOLUME /var/nginx/cache
COPY nginx.conf /etc/nginx/nginx.conf
