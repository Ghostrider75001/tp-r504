# Arrete les 3 conteneur crée avec le script start.sh
docker kill nginx1 nginx2 nginx-lb >> /dev/null

if [$? -eq 0]; then
    echo "Machine arreté"
else
    echo "Erreur lors de l'arrêt des machines"
fi

# Supprime les 3 conteneur crée avec le script start.sh
docker rm nginx1 nginx2 nginx-lb > /dev/null 2>&1

if [$? -eq 0]; then
    echo "Machine supprimées"
else
    echo "Erreur lors de la suppression des machines"
fi

docker ps
docker ps -a