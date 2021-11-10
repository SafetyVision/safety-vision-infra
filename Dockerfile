FROM nginx:1.20.1
COPY ./data/nginx/app.conf /etc/nginx/app.conf
