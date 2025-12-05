quad_seq_function() {
    echo "Hello!"
    echo
    echo "Welcome to the quadratic sequencing portion of tonight's application. Please enjoy."
    echo "Please enter 3 non-negative numbers:"
    echo
    read const_a
    read const_b
    read const_c
    echo
    echo "Thank you, we're almost ready."
    echo "Please enter two numbers for the range of the sequence."
    echo
    read range_1
    read range_2
    echo
    echo "######################################################################"
    echo
    term_sum=0

    for (( n=range_1; n<=range_2; n++ )); do        
        term=$((const_a*n**2+const_b*n+const_c))
        if [ $n -eq $range_1 ]; then
            first_term=$term
        fi    

        is_prime=0
        
        if (( term<=1 )); then
            is_prime=1
        fi

        i=2

        if (( is_prime == 0 )); then
                while (( i < term )); do
                    if (( term % i == 0 )); then
                        is_prime=1 
                        break 
                    fi
                    
                    i=$(( i + 1 ))
                done
            fi
        
            if (( is_prime == 0 )); then
                echo $term " -> This term IS a prime number."
            else
                echo $term " -  This term is NOT a prime number."
            fi

        term_sum=$(( term_sum + term ))
    done

    echo "The sum total of Terms: "$term_sum
    echo
    echo "######################################################################"
    echo

    product_term=$(( first_term*term ))

    echo "The product of the first term ("$first_term") and last term ("$term") is: "$product_term
    echo 
    echo "Choose a number:"
    read product_num
    echo

    if (( (first_term * term) % product_num == 0 )); then
        echo "The product of the first and last terms is divisible by "$product_num"!!!"
    else 
        echo "The product of the first and last terms is not divisible by" $product_num ", sorry."
    fi

    echo
    echo "######################################################################"
    echo
    echo "And that concludes the quadratic sequence portion of this application."
    echo "Have a nice day."

}

quad_seq_function