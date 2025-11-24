#!/bin/bash

echo "Hello!"
echo "Welcome to the quadratic sequencing portion of tonight's application. Please enjoy."
echo "Please enter 3 non-negative numbers:"
read con_a
read con_b
read con_c
echo "Thank you, we're almost ready."
echo "Please enter two numbers for the range of the sequence."
read range_1
read range_2
echo "Now please enter your banking PIN number... just kidding... brb."

let term_sum=0

for (( n=range_1; n<=range_2; n++ )); do
    echo "Term Sum is: "$term_sum
    let term=$((con_a*n**2+con_b*n+con_c))
    # 2. Check for Primality
    echo "Term is "$term
    term_sum=$(( term_sum + term )) 
done
echo "Term Sum is: "$term_sum