#!/bin/bash

# Nom du fichier de sortie
OUTPUT_FILE="scan_result_1.csv"

# Nettoyer le fichier de sortie ou le créer
echo "# IP;TCP ports" > $OUTPUT_FILE

# Effectuer un scan réseau avec nmap
nmap -sT -oG - 172.16.0.0/24 | grep "open" | awk '/Host:/{ip=$2; open_ports+=gsub(/open/, ""); print ip";"open_ports; open_ports=0}' >> $OUTPUT_FILE

echo "Scan terminé. Résultats enregistrés dans $OUTPUT_FILE."
xdg-open $OUTPUT_FILE
