#!/bin/bash

sudo apt-get update
sudo apt-get updagrade -y

sudo apt-get install apache2 -y

sudo git clone https://github.com/denilsonbonatti/mundo-invertido

cd mundo-invertido
sudo cp * -R /var/www/html/