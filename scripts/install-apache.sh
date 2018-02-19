#!/bin/bash

zypper --non-interactive install apache
echo 'ServerName localhost' >> /etc/apache2/httpd.conf
/usr/sbin/apachectl restart
