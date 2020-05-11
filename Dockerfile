ARG DISCOURSE_VERSION
FROM libresh/discourse:${DISCOURSE_VERSION} as discourse
FROM nginx
COPY --from=discourse /home/discourse/discourse/public /home/discourse/discourse/public
COPY --from=discourse /home/discourse/discourse/plugins /home/discourse/discourse/plugins
VOLUME /var/nginx/cache
COPY nginx.conf /etc/nginx/nginx.conf
