#!/bin/bash

echo "atualizando o servidor"
apt-get update
apt-get upgrade -y

echo "instalando apache e unzip"
apt-get install apache2 -y
apt-get install unzip -y

echo " baixando arquivos da aplicaçao."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "descompactando e transferindo aquivos para pasta do apache"
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
