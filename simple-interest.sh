#!/bin/bash

# Simple Interest Calculator

echo "Simple Interest Calculator"
echo "--------------------------"

# Read user inputs
read -p "Enter the Principal amount: " principal
read -p "Enter the Rate of Interest (in %): " rate
read -p "Enter the Time period (in years): " time

# Validate inputs (basic check)
if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
  echo "Error: All fields are required."
  exit 1
fi

# Calculate Simple Interest
# Formula: SI = (Principal * Rate * Time) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display result
echo
echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"
