# Este Dockerfile permite incluir solr al container de Wordpress

FROM wordpress:latest

RUN apt-get update \
&& apt-get install -y libcurl4-openssl-dev libxml2-dev \
&& pecl install solr \
&& docker-php-ext-enable solr