# comp1236_groupProject

COMP1236 Group Project – Fall 2025
Use Git Bash for the completion of this project. To achieve the basic functionality of the application you
are required to use only the programming constructs taught in class.
Develop a shell scripting application that allows the user to perform these three tasks:
Task 1 – Hexagonal numbers
The program should identify and print all hexagonal numbers within a user-specified range [a, b]. For
example, if the user selects [8, 100], the program should print 15, 28, 45, 66, 91. For each hexagonal
number found, the program should indicate whether it is odd or even.
The program should count and print:
o The total number of odd hexagonal numbers found.
o The total number of even hexagonal numbers found.
The program should compute and print:
o The sum of all odd hexagonal numbers in the range.
o The sum of all even hexagonal numbers in the range.
You can read more about hexagonal numbers below:
https://www.mymathtables.com/numbers/first-hundred-hexagonal-number-table.html
https://archive.lib.msu.edu/crcmath/math/math/h/h248.htm
https://www.drking.org.uk/hexagons/misc/numbers.html
Task 2 – Square numbers
Find and print all square numbers that appear in odd positions in the sequence of square numbers,
starting from a user-specified initial position value. The user specifies how many such numbers to print.
Additionally, find and print all numbers that can be written as the sum of two consecutive square
numbers, starting from the 1st square number, up to a maximum value specified by the user.
The program should:
o Generate square numbers in sequence but only prints those in odd positions (for example, if the
user chose to start from position 3, the program should print the 3rd square number, 5th, etc.).
o For each square number in an odd position found, the program also checks whether that square
number is a factor of a positive integer x, where x is another user-specified input.
o The program also finds and prints numbers that can be written as the sum of two consecutive
square numbers, starting from the first square number up to a maximum specified by the user.
For example, 5 is such a number since 12 + 22 = 5. Give a count of how many such numbers were
found.
Task 3 - Quadratic sequence
Find the terms of a sequence given by the rule: Term = an2 + bn + c, where a, b and c are non-negative
integers specified by the user, and n is a natural number. This task should print a limited amount of
numbers in the sequence. The user should specify the range of the numbers to be printed [n1, n2], where
n1 represent the position of the first term, and n2 represents the position of the last term the user
chooses to print (for example, if the user chooses a=1, b=2 and c=3 in the range [2,4] the program
should print: 11, 18, 27). The program should identify whether the numbers found are prime numbers
and give a count of such numbers.
The program should calculate and print:
o The sum of all the numbers found in the range [n1, n2].
o The product of the first and the last number printed (in the example given this will be 297 since
297=11*27).
o Next to the product the program should print whether the product is a multiple of number x,
where x is an input given by the user.
Your application should be user friendly.
First, you should ask the user to enter a password. The password is w22 and should be case sensitive.
The user should be allowed three choices to enter the correct password. A warning should be displayed
after the second incorrect password, to notify the user that there is only one attempt left If the user
enters the correct password, your program should display a menu with 3 options only, corresponding to
the list of operations this application offers (the three tasks).
In your menu design, if the user enters H or h, the application should offer to work with hexagonal
numbers as required by Task 1.
If the user enters S or s, the program should offer to work with square numbers, following the
instructions given in Task 2.
If the user enters Q or q, the application should offer to work with quadratic sequences, as required by
Task 3.
If the user enters an incorrect task choice, the menu should be redisplayed with a warning message,
indicating the issue. This should continue until the user enters the correct choice.
After the user enters a correct choice, the program should display the user’s selection before printing
the output. After a task has been completed, the user should be given the option to select to continue
with another task, or to exit. If the user chooses to continue with another task, the menu should be
redisplayed. This process should continue in this manner until the user decides to exit
Before writing the code, you should work on the problem-solving part of the application development
process. Draw the flowcharts for each of the tasks separately. You also need to submit the main
flowchart which will show the logic of your entire application.
Rubric and submission guidelines:
Marks: 20% of course grade
Task Possible marks Description
Problem Solving - Flowcharts 15 The flowchart shows the logic of
your program correctly
Application Menu Interaction 10 The application menu displays
correctly. This includes each
task’s interaction with the user
while getting the input
Task 1 Functionality 15 The application finds and
displays the required hexagonal
numbers correctly
Task 2 Functionality 15 The application finds and
displays the required square
numbers correctly
Task 3 Functionality 15 The application finds and
displays the required numbers
correctly
Adherence to program
requirements
20 Application logic and the
requirements are met.
Code Documentation and
Conventions
10 Comments are entered
appropriately, and best
conventions discussed in class
are followed.
Submission instructions:
Complete this project by Saturday, 6th of December.
You should submit a zip file named Group_No_Project.zip (No stands for your group number) which
contains these files:
1. A single pdf file which contains the flowchart(s) named: Group_No_Flowchart.pdf
2. A single .sh file which contains your code named: Group_No_Application.sh
3. A single document where you have indicated the software used for completion of your tasks and
how the work was distributed amongst team members.
4. The AI declaration forms (3 forms – one for each group member) should be included.
