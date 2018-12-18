#!/usr/bin/env bash
curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew

# Move phpbrew to somewhere can be found by your $PATH
sudo mv phpbrew /usr/local/bin/phpbrew

phpbrew init

php_args="+dba +ipv6 +dom +calendar +wddx +static +inifile +inline +cli +ftp +filter +zts +json +hash +exif +mbstring +mbregex +libgcc +pdo +posix +embed +sockets +debug +phpdbg +zip +bcmath +fileinfo +ctype +cgi +soap +pcntl +phar +session +tokenizer +opcache +imap +ldap +tidy +kerberos +xmlrpc +fpm +dtrace +pcre +mhash +mcrypt +zlib +curl +readline +editline +gd +intl +icu +mysql +sqlite +pgsql +gettext +iconv +bz2 +ipc +gmp +pear +openssl='/usr/local/opt/openssl/'"

phpbrew lookup-prefix homebrew
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
phpbrew lookup-prefix homebrew

# Comment out which ones you don't want to install.

#phpbrew install 7.3 $php_args
phpbrew install 7.2 $php_args
#phpbrew install 7.1 $php_args
#phpbrew install 5.6 $php_args

phpbrew ext install memcached
phpbrew ext install xdebug
phpbrew ext install