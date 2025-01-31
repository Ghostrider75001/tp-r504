#!/bin/bash

# Nom du fichier de sortie
OUTPUT_FILE="scan_result_2.csv"

# Nettoyer le fichier de sortie ou le créer
echo "# IP;TCP ports;UDP ports" > $OUTPUT_FILE

# Effectuer un scan réseau avec nmap (TCP et UDP)
for ip in $(nmap -sn 172.16.0.0/24 | grep "Nmap scan report" | awk '{print $NF}')
do
    # Compter les ports TCP ouverts
    tcp_ports=$(nmap -sT $ip | grep "open" | wc -l)
    
    # Compter les ports UDP ouverts
    udp_ports=$(nmap -sU -F $ip | grep "open" | wc -l)
    
    # Ajouter l'entrée au fichier CSV
    echo "$ip;$tcp_ports;$udp_ports" >> $OUTPUT_FILE
done

echo "Scan terminé. Résultats enregistrés dans $OUTPUT_FILE."
xdg-open $OUTPUT_FILE
