#!/bin/bash

# Nom du fichier de sortie
OUTPUT_FILE="scan_result_3.csv"

# Nettoyer le fichier de sortie ou le créer
echo "# IP;TCP ports;UDP ports;Kernel version" > $OUTPUT_FILE

# Effectuer un scan réseau avec nmap (TCP, UDP et détection d'OS)
for ip in $(nmap -sn 172.16.0.0/24 | grep "Nmap scan report" | awk '{print $NF}')
do
    # Compter les ports TCP ouverts
    tcp_ports=$(nmap -sT $ip | grep "open" | wc -l)
    
    # Compter les ports UDP ouverts
    udp_ports=$(nmap -sU -F $ip | grep "open" | wc -l)

    # Détecter la version du kernel Linux
    kernel_version=$(nmap -O $ip | grep "Linux" | awk -F': ' '{print $2}' | head -n 1)
    
    # Si aucune version n'est détectée, indiquer "Unknown"
    if [ -z "$kernel_version" ]; then
        kernel_version="Unknown"
    fi

    # Ajouter l'entrée au fichier CSV
    echo "$ip;$tcp_ports;$udp_ports;$kernel_version" >> $OUTPUT_FILE
done

echo "Scan terminé. Résultats enregistrés dans $OUTPUT_FILE."
xdg-open $OUTPUT_FILE
