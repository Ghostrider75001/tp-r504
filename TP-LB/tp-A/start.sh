#!/bin/bash

# Construire l'image im-nginx-lb
docker build -t im-nginx-lb -f Dockerfile .

# Créer les sous-dossiers "shared1" et "shared2" et placer les fichiers index.html
mkdir shared1 shared2 
echo "<h1>Hello 1</h1>" > shared1/index.html
echo "<h1>Hello 2</h1>" > shared2/index.html

# Lancer les conteneurs nginx1 et nginx2 en mode détaché avec les ports mappés et le bind mount
#nignx1
docker run -d \
    --name nginx1 \
    -p 81:80 \
    -v $(pwd)/shared1:/usr/share/nginx/html \
    nginx:latest

#nignx2
docker run -d \
    --name nginx2 \
    -p 82:80 \
    -v $(pwd)/shared2:/usr/share/nginx/html\
    nginx:latest

# Lancer le conteneur basé sur l'image im-nginx-lb
docker run -d -p 83:80 --name nginx-lb im-nginx-lb

sleep 2
docker ps -a