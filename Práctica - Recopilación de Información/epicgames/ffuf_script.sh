#!/bin/bash

# Leer cada línea del archivo subdominios_targets.txt
while IFS= read -r subdomain
do
  # Ejecutar ffuf en cada subdominio
  ffuf -w common.txt -t 5 -mc 200 -u "http://$subdomain/FUZZ" >> ffuf_subdominios.txt
done < subdominios_targets.txt
