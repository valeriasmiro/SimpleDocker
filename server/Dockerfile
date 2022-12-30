FROM nginx

WORKDIR .

COPY server.c /
COPY nginx.conf /etc/nginx/nginx.conf
COPY script.sh /

RUN apt-get -y update && apt-get install -y \
    gcc \
    spawn-fcgi \
    bash \
    libfcgi-dev &&\
    rm -rf /var/lib/apt/lists \
    && chmod 777 script.sh \
    && /etc/init.d/nginx start \
    && chown -R nginx:nginx /var/cache/nginx \
    && chown -R nginx:nginx /var/log/nginx \
    && chown -R nginx:nginx /etc/nginx/conf.d \
    && touch /var/run/nginx.pid \
    && chown -R nginx:nginx /var/run/nginx.pid \
    && chmod u-s usr/bin/chsh \
    && chmod u-s usr/bin/gpasswd \
    && chmod u-s usr/bin/chfn \
    && chmod u-s usr/bin/newgrp \
    && chmod u-s bin/mount \
    && chmod u-s usr/bin/passwd \
    && chmod u-s bin/su \
    && chmod u-s bin/umount \
    && chmod 755 sbin/unix_chkpwd \
    && chmod 755 usr/bin/chage \
    && chmod 755 usr/bin/wall \
    && chmod 755 usr/bin/expiry \
    && usermod -G root nginx \
    && gcc server.c -lfcgi -o server.out \
    && chmod 777 server.out


USER nginx

ENTRYPOINT ["./script.sh"]
