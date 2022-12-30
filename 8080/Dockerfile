FROM nginx:latest

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY script.sh /

RUN chmod +x script.sh

ENTRYPOINT ["./script.sh"]