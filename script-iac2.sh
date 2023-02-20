#!/bin/bash

echo "*************************************************"
echo "Atualizando pacotes e baixando novas atualizações"
echo "*************************************************"

apt-get update
apt-get upgrade -y

echo "********************"
echo "Instalando Apache..."
echo "********************"

apt-get install apache2 -y

echo "*******************"
echo "Instalando Unzip..."
echo "*******************"

apt-get install unzip -y

cd /tmp

echo "****************************"
echo "Baixando aplicação do GitHub"
echo "****************************"

wget  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "************************************"
echo "Descompactando a aplicação do GitHub"
echo "************************************"

unzip main.zip

echo "**********************************************************************"
echo "Entrar na pasta criada e copiar arquivos para a pasta padrão Apache..."
echo "**********************************************************************"

cd linux-site-dio-main
cp -R * /var/www/html

echo "********************************"
echo "Finalizando o processo do script"
echo "********************************"


