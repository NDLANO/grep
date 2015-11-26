FROM nginx:1.9.7

# Delete examplefiles
RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.tmpl /etc/nginx/nginx.tmpl
COPY start-nginx.sh /start-nginx.sh
RUN chmod +x /start-nginx.sh

CMD ["/start-nginx.sh"]
