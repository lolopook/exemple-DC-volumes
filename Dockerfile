# Dockerfile
FROM php:8.2-apache

RUN apt-get update && apt-get install -y

# installation d'extension par docker avec le paramètre docker-php-ext-install donné dans la documentation

RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli pdo pdo_mysql
