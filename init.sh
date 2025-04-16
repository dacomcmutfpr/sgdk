#!/bin/bash

# Parar o script se qualquer comando falhar
set -e

# Baixar o arquivo sgdk200.7z
echo "Baixando sgdk200.7z..."
wget -O sgdk200.7z http://backup.dacom/sgdk/sgdk200.7z

# Descompactar o arquivo
echo "Descompactando sgdk200.7z..."
7z x sgdk200.7z

# Entrar na pasta sgdk200
cd sgdk200/

# Clonar o repositório SGDK_wine
echo "Clonando repositório SGDK_wine..."
git clone https://github.com/Franticware/SGDK_wine

# Mover o script para a pasta bin
echo "Movendo generate_wine.sh para bin/..."
mv SGDK_wine/generate_wine.sh bin/generate_wine.sh

# Entrar na pasta bin
cd bin/

# Tornar o script executável (opcional, mas recomendado)
chmod +x generate_wine.sh

# Executar o script
echo "Executando generate_wine.sh..."
bash generate_wine.sh
