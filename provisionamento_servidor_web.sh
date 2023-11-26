#!/bin/bash

#Efetuando as atualizações
echo Efetuando as atualizações...
apt update -y
apt upgrade -y

#Efetuando instalação dos pacotes Apache e Unzip
echo Efetuando instalação dos pacotes Apache e Unzip...
apt install apache2 unzip wget -y

#Baixando os arquivos do repositório para o site
echo Baixando os arquivos do repositório para o site...
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

#Copiando arquivos do site para a pasta padrão do Apache
echo Copiando arquivos do site para a pasta padrão do Apache...
unzip main.zip
copy -R -v /tmp/linux-site-dio-main/* /var/www/html/
