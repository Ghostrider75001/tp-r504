#!/bin/bash

# Afficher Start dans le fichier result.txt
echo "------Start------" > result.txt

# Execute 500 fois la commande specifié 
# et affiche la sortie dans result.txt
for ((i=1;i<=500; i++))
do
    curl localhost:83 -s >> result.txt
done

# Afficher End dans le fichier result.txt
echo "------End------" >> result.txt

# Mets le nombre de ligne dans une variable
Nb_L=$(cat result.txt | wc -l);

# Mets le nombre de "Hello 1" dans une variable
Nb_H1=$(cat result.txt | grep "Hello 1" | wc -l); 

# Mets le nombre de "Hello 2" dans une variable
Nb_H2=$(cat result.txt | grep "Hello 2" | wc -l);


# Affiche le nombre de lignes
echo "Nombre de lignes: $Nb_L"

# Affiche le nombre de "Hello 1" 
echo "Nombre Hello 1: $Nb_H1"

# Affiche le nombre de "Hello 2" 
echo "Nombre Hello 2: $Nb_H2"

bash /home/deadsec/Documents/tp-r504/TP-LB/tp-A/load_balance.sh

# Ouvre automatiquement le ficher de sortie
#xdg-open result.txt