FROM alpine:3.7

EXPOSE 80 443

WORKDIR /web

COPY . /web

RUN apk add -U caddy ca-certificates libmcrypt  \
 	php7 \
 	php7-fpm \
 	php7-mcrypt \
 	php7-gd \
 	php7-openssl \
 	php7-json \
 	php7-mbstring \
 	curl \
 	php7-pdo_mysql \
 	php7-curl \
 	php7-session \
 	php7-iconv \
 	php7-dom \
	php7-ctype

CMD php-fpm7 --daemonize && caddy -conf Caddyfile
