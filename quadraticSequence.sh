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

for (( n=range_1; n<=range_2; n++ )); do        # For loop using user input range_1, range_2
    echo "Term Sum is: "$term_sum               # State the sum of all terms each loop cycle
    let term=$((con_a*n**2+con_b*n+con_c))      # Calculate the terms from using the Quadratic Sequence equation 
    echo "Term is "$term                        # Print the term/result of the equation 
    
    term_sum=$(( term_sum + term ))             # Add the most recent term to the variable representing the sum of quadratic terms  
done
echo "The sum of Terms: "$term_sum