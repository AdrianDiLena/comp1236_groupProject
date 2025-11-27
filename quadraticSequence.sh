#!/bin/bash

echo "Hello!"
echo "Welcome to the quadratic sequencing portion of tonight's application. Please enjoy."
echo "Please enter 3 non-negative numbers:"
read const_a
read const_b
read const_c
echo "Thank you, we're almost ready."
echo "Please enter two numbers for the range of the sequence."
read range_1
read range_2
echo "######################################################################$"
term_sum=0

for (( n=range_1; n<=range_2; n++ )); do        
    term=$((const_a*n**2+const_b*n+const_c))
    if [ $n -eq $range_1 ]; then
        first_term=$term
    fi    
    echo $term
    term_sum=$(( term_sum + term ))
done

# Still need to add in part of script that checks if terms are prime. 

echo "The sum total of Terms: "$term_sum
echo "The product of the first term ("$first_term") and last term ("$term") is: "
product_term=$(( first_term*term ))
echo $product_term
echo "Choose a number:"
read product_num

if (( (first_term * term) % product_num == 0 )); then
    echo "The product of the first and last terms is divisible by "$product_num"!!!"
else 
    echo "The product of the first and last terms is not divisible by" $product_num ", sorry."
fi
echo "And that concludes the quadratic sequence portion of this application."
echo "Have a nice day."
