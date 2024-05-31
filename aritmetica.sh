#!/bin/bash

read -p "introdueix el valor de x: " X
read -p "introdueix el valor de y: " Y
echo "has introduït ${X} i ${Y}"
SUMA=$((X+Y))
echo "X+Y=${SUMA}"