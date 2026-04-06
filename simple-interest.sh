#!/usr/bin/env bash
# Simple Interest Calculator
# SI = (Principal * Rate * Time)/100

read -rp "Enter principal: " principal
read -rp "Enter rate of interest: " rate
read -rp "Enter time period: " time

si=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p*r*t)/100 }')
echo "Simple Interest = $si"
