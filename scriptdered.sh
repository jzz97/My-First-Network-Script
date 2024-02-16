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
