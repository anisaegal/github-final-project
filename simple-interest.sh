#!/bin/bash

# simple-interest.sh
# A simple interest calculator that prompts the user for principal,
# rate of interest, and time period, then computes the simple interest.
#
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "=== Simple Interest Calculator ==="

read -p "Enter principal amount: " principal
read -p "Enter rate of interest (%): " rate
read -p "Enter time period (years): " time

if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
  echo "Error: principal, rate, and time are all required."
  exit 1
fi

interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "-----------------------------------"
echo "Principal:        $principal"
echo "Rate of Interest: $rate%"
echo "Time Period:      $time year(s)"
echo "Simple Interest:  $interest"
echo "-----------------------------------"
