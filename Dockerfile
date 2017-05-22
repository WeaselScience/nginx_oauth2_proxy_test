FROM nginx

ENV OAUTH2_PROXY_NGINX_PROXY_URL http://oauth2proxy:8080
ENV OAUTH2_PROXY_NGINX_BACKEND_URL http://localtunnel:8080/
ENV OAUTH2_PROXY_NGINX_AUTH_LINK sign_in

COPY ./default.template.conf /etc/nginx/conf.d/default.template

CMD /bin/bash -c "envsubst < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"