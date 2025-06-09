#!/bin/bash

# Instalar Hugo (versión extendida)
HUGO_VERSION="0.84.0"
wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.deb
sudo dpkg -i hugo_extended_${HUGO_VERSION}_Linux-64bit.deb
rm hugo_extended_${HUGO_VERSION}_Linux-64bit.deb

# Instalar dependencias adicionales
sudo apt-get update
sudo apt-get install -y make shellcheck