#!/bin/bash

# Password Function

PASSWORD="w22"
attempts=0

password() {
    while [ $attempts -lt 3 ]; do
        read -s -p "Enter password: " input
        echo

        if [[ "$input" == "$PASSWORD" ]]; then
            echo "Access granted! Welcome User!"
            break
        fi
    #attempts
        attempts=$((attempts+1))

        if [ $attempts -eq 2 ]; then
            echo "Incorrect password. Last Try"
        elif [ $attempts -lt 3 ]; then
            echo "Incorrect password. 2 Attempts Left!!"
        fi
    done

    if [ $attempts -eq 3 ]; then
        echo "You Have failed to enter the PASSWORD!"
        exit 1
    fi
}

# Square Numbers Function

SquareNum_Function(){

    read -p "Pick a number: " a
    read -p "How long will the list be pick a number: " list
    read -p "sum of two consecutive square maximum value: " value

    #odd position code

    a=$a
    x=0

    while [ $x -lt $list ]
    do
        echo "$a^2 = $((a * a))"
        a=$((a + 2))
        x=$((x + 1))
    done

    # two consecutive squares

    y=1
    total=0

    while :
    do
        sum=$((y*y + (y+1)*(y+1)))

        if [ $sum -gt $value ]; then
            break
        fi

        echo "$y^2 + $((y+1))^2 = $sum"

        total=$((total + 1))
        y=$((y + 1))
    done

    echo "Total odd numbers: $total"
    }

# Quadratic Sequence Function

quad_seq_function() {
    echo "Hello!"
    echo
    echo "Welcome to the quadratic sequencing portion of tonight's application. Please enjoy."
    echo "Please enter 3 non-negative numbers:"
    echo
    read -p "Number 1: " const_a
    read -p "Numero 2: " const_b
    read -p "Nombre 3: " const_c
    echo
    echo "Thank you, we're almost ready."
    echo "Please enter two numbers for the range of the sequence."
    echo
    read -p "Start of Range: " range_1
    read -p "End of Range: " range_2
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

# Main Menu Function

mainMenu() {

    # FIXED: Added 'do' after the semicolon
    while true; do

        echo
        echo "======== Main Menu ========"
        echo
        echo "Type H or h for Task 1: Hexagonal Numbers"
        echo
        echo "Type S or s for Task 2: Square Numbers"
        echo
        echo "Type Q or q for Task 3: Quadratic Sequence"
        echo
        echo "Type EXIT to leave"
        echo
        echo "=========================="
        echo

        read -p "Enter a task: " task

        # Ensure Task1, Task2, and Task3 functions are defined before MainMenu is called
        case "$task" in
            H|h)
                echo "Task not complete. Please pick another task."
                ;;
            S|s)
                SquareNum_Function
                ;;
            Q|q)
                quad_seq_function
                ;;
            EXIT|exit)
                echo "Bye Bye"
                exit 0
                ;;
            *)
                echo "Please pick an option from the MENU"
                ;;
        esac

        echo
        # This creates a pause so the user can see the output of the task
        read -p "Press Enter to return to menu..."
        echo

    done
}

# Invoking functions at start-up of application... 

password
mainMenu