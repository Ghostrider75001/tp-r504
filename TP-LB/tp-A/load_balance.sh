#!/bin/bash

# Compter les réponses "200 OK" du nginx1
count_nginx1=$((docker logs nginx1 | grep "200" | wc -l) 2>/dev/null)

# Compter les réponses "200 OK" du nginx2
count_nginx2=$((docker logs nginx2 | grep "200" | wc -l) 2>/dev/null)

echo "nombres de réponses '200 OK' du nginx1 : $count_nginx1"
echo "nombres de réponses '200 OK' du nginx2 : $count_nginx2"