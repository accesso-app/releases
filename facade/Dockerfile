FROM nginx:stable

RUN apt update && apt install curl -y

# For envsubst
ENV ESC="$"

COPY ./facade/nginx.tpl.conf /etc/nginx/nginx.tpl

CMD /bin/sh -c "envsubst < /etc/nginx/nginx.tpl > /etc/nginx/nginx.conf && nginx -g 'daemon off;' || cat /etc/nginx/nginx.conf"
