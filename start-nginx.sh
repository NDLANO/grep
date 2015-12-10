#!/bin/sh
# Create nginx.conf by reading nginx.tmpl and replace envoriment variables for the placeholders ${ENVIROMENT_VARIABLE_NAME} and save the result to nginx.conf.
awk '{while(match($0,"[$]{[^}]*}")) {var=substr($0,RSTART+2,RLENGTH -3);gsub("[$]{"var"}",ENVIRON[var])}}1' < /etc/nginx/nginx.tmpl > /etc/nginx/nginx.conf

# Start nginx in the foreground.
nginx -g 'daemon off;'
