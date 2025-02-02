FROM nginx:latest

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./uwsgi_params /etc/nginx/uwsgi_params

RUN mkdir -p /vol/static
RUN chmod -R 755 /vol/static