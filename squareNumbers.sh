#!/bin/bash

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

SquareNum_Function
