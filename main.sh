#password
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
                Task1
                ;;
            S|s)
                Task2
                ;;
            Q|q)
                Task3
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

password
mainMenu