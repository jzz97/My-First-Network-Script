#!/bin/bash/

# Script para probar la red con git bash en Windows

echo "Network Testing Script"

#Ver la conexión a Internet

echo "1. Comprobando la conexión a Internet"

ping -c 4 www.google.com

echo "................"

# Mostrar interfaces de red y direcciones IP

echo "2. Mostrando interfaces y direcciones IP"
ipconfig
echo "................."

#Display Routing Table

echo "3. Mostrando tabla de enrutamiento"
nestat -rn
echo "................."

# Rsolución de DNS

echo "4. Resolución DNS"
nslookup www.google.com.co

echo "...................."

# Ver puertos abiertos en el host local

read -p "Ingrese la dirección IP o el nombre del host para ver puertos abiertos en: " remote_host
echo "5. Buscando puertos abiertos en $remote_host"
nmap -p- $remote_host
echo "......................"

#Traceroute a host remoto
read -p "Ingrese la direccion IP o el nombre del host para hacer el trace route a: " trace_host
echo "Trazar ruta a : $trace_host"
tracert $trace_host
echo "....................."

# Comprobar ancho de banda usando el test de velocidad por medio de la CLI de Windows
read -p "Comprobar el ancho de banda con el test de velocidad CLI (y/n): " speedtest_option
if ["speedtest_option" == "y"]; then
./speedtestbyookla_x64

fi 
echo "..................."

echo "Testeo de red completado"
