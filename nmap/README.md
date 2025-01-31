# Documentation des scripts scan_A106
## Introduction
Les scripts scan_A106 permettent de scanner un réseau local pour détecter les machines connectées et collecter des informations spécifiques :

- Version 1 : Adresses IP et nombre de ports TCP ouverts.
- Version 2 : Ajout du nombre de ports UDP ouverts.
- Version 3 : Ajout de la version du kernel Linux détectée par nmap.
Tous les résultats sont enregistrés dans des fichiers CSV exploitables.

## Prérequis
#### Installer nmap :
Les scripts utilisent l'outil nmap pour effectuer les scans réseau. Assurez-vous que nmap est installé.

Pour installer nmap sur un système basé sur Debian/Ubuntu :
```
sudo apt update
sudo apt install nmap
```

#### Droits d'exécution :
Assurez-vous que les scripts sont exécutables :
```
chmod +x scan_A106_v1.sh
chmod +x scan_A106_v2.sh
chmod +x scan_A106_v3.sh
```

#### Accès réseau :
Les machines cibles doivent être accessibles sur le réseau (par exemple, dans une plage d'adresses IP locale comme 172.16.0.0/24).
