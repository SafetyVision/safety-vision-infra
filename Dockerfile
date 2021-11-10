FROM nginx:1.20.1
COPY ./data/nginx/prod/default.conf /etc/nginx/conf.d/default.conf
