#!/bin/bash

# Simple Interest Calculator Script
# Formula: SI = (P * R * T) / 100

echo "--- Simple Interest Calculator ---"

# Prompt user for Principal amount
echo -n "Enter the Principal amount: "
read p

# Prompt user for Rate of Interest
echo -n "Enter the Annual Rate of Interest (in %): "
read r

# Prompt user for Time period
echo -n "Enter the Time period (in years): "
read t

# Calculate Simple Interest
# Note: Bash handles integers by default. 
# We use 'bc' for decimal support if needed, or simple $(( )) for integers.
si=$(echo "scale=2; ($p * $r * $t) / 100" | bc)

echo "----------------------------------"
echo "The Simple Interest is: $si"
