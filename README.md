# Docker image for php-fpm7

[![](https://badge.imagelayers.io/yavin/alpine-php-fpm:latest.svg)](https://imagelayers.io/?images=yavin/alpine-php-fpm:latest)

Tags:
* `latest` [Dokerfile](https://github.com/naerymdan/docker-alpine-php-fpm7/blob/master/Dockerfile)

Image for php-fpm. It is based on Alpine linux and thats why it is very small (~60MB). Included extensions are required for Laravel 5.2 framework.
* PHP 7.0.4

## Running
```
docker run --rm -p 9000:9000 naerymdan/alpine-php-fpm:docker-alpine-php-fpm7
```

nginx configuration to connect to this FPM setup:
<pre>
server {
    # some other configuration...

    location ~ \.php(/|$) {
        # some other configuration...
        <b>fastcgi_pass  fpm-host-name:9000</b>;
    }
}
</pre>

The PHP FPM is listening on port 9000 from all clients. Make sure you do not expose the port to the public.


#### PHP extensions included:
* fpm
* session
* opcache
* pdo_mysql
* mysqlnd
* json
* xml
* curl
* gd
* intl
* pdo
* mbstring
* mcrypt
* dom
* ctype
* posix

##### All php7 available packages in repository
```
php7-intl
php7-openssl
php7-dba
php7-sqlite3
php7-pear
php7-phpdbg
php7-litespeed
php7-gmp
php7-pdo_mysql
php7-pcntl
php7-common
php7-xsl
php7-fpm
php7-mysqlnd
php7-enchant
php7-pspell
php7-snmp
php7-doc
php7-mbstring
php7-dev
php7-xmlrpc
php7-embed
php7-xmlreader
php7-pdo_sqlite
php7-exif
php7-opcache
php7-ldap
php7-posix
php7-session
php7-gd
php7-gettext
php7-json
php7-xml
php7
php7-sysvshm
php7-curl
php7-shmop
php7-odbc
php7-phar
php7-pdo_pgsql
php7-imap
php7-pdo_dblib
php7-pgsql
php7-pdo_odbc
php7-zip
php7-apache2
php7-cgi
php7-ctype
php7-mcrypt
php7-readline
php7-wddx
php7-bcmath
php7-calendar
php7-tidy
php7-dom
php7-sockets
php7-soap
php7-sysvmsg
php7-zlib
php7-ftp
php7-sysvsem
php7-pdo
php7-bz2
php7-mysqli
```

###### Licence
[MIT](https://opensource.org/licenses/MIT)