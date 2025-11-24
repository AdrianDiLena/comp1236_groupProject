# comp1236_groupProject

Here’s the content formatted cleanly into Markdown (no bold headings):

---

## COMP1236 Group Project – Fall 2025

Use Git Bash for this entire project. To achieve the required functionality, use only the programming constructs taught in class.

Develop a shell scripting application that allows the user to perform these three tasks:

## Task 1 – Hexagonal numbers

Identify and print all hexagonal numbers within a user-specified range `[a, b]`.
Example: if the user selects `[8, 100]`, print: `15, 28, 45, 66, 91`.

For each hexagonal number found, indicate whether it is odd or even.

The program should count and print:

* The total number of odd hexagonal numbers.
* The total number of even hexagonal numbers.

The program should compute and print:

* The sum of all odd hexagonal numbers.
* The sum of all even hexagonal numbers.

More information on hexagonal numbers:

* [https://www.mymathtables.com/numbers/first-hundred-hexagonal-number-table.html](https://www.mymathtables.com/numbers/first-hundred-hexagonal-number-table.html)
* [https://archive.lib.msu.edu/crcmath/math/math/h/h248.htm](https://archive.lib.msu.edu/crcmath/math/math/h/h248.htm)
* [https://www.drking.org.uk/hexagons/misc/numbers.html](https://www.drking.org.uk/hexagons/misc/numbers.html)

## Task 2 – Square numbers

Find and print all square numbers that appear in *odd positions* in the sequence of square numbers, starting from a user-specified initial position. The user also specifies how many such numbers to print.

Additionally, find and print all numbers that can be written as the sum of two consecutive square numbers, starting from the 1st square number, up to a user-specified maximum value.

The program should:

* Generate square numbers in sequence but print only those in odd positions
  (Example: starting at position 3 → print the 3rd, 5th, 7th… square numbers).
* For each such square number, check whether it is a factor of a positive integer `x` (user-specified).
* Find and print all numbers that can be written as the sum of two consecutive square numbers
  (Example: `1² + 2² = 5`).
  Provide a count of how many such numbers were found.

## Task 3 – Quadratic sequence

Generate terms of a quadratic sequence defined by:

```
Term = a·n² + b·n + c
```

Where `a`, `b`, and `c` are non-negative integers specified by the user, and `n` is a natural number.

The user specifies a range `[n1, n2]` indicating the term positions to print.

Example: if `a=1`, `b=2`, `c=3` and the range is `[2, 4]`, print:

```
11, 18, 27
```

The program should:

* Identify whether each number printed is prime.
* Count how many prime numbers were found.
* Compute and print the sum of all numbers in the range.
* Compute the product of the first and last numbers printed.
  (Example above: `11 * 27 = 297`)
* Indicate whether the product is a multiple of a user-specified number `x`.

## Program flow and menu requirements

* Start by asking the user to enter a password: `w22` (case-sensitive).
* Allow the user three attempts. After the second incorrect attempt, display a warning.
* After a correct password, display a menu with three options corresponding to the three tasks.

Menu behavior:

* `H` or `h` → Task 1: Hexagonal numbers
* `S` or `s` → Task 2: Square numbers
* `Q` or `q` → Task 3: Quadratic sequence

If the user enters an invalid choice, redisplay the menu with a warning until a valid choice is entered.

After completing a task, allow the user to choose another task or exit. Continue until the user chooses to exit.

## Flowcharts

Before writing code, create:

* A flowchart for **each** task.
* A main flowchart showing the logic of the entire application.

## Rubric and submission guidelines

Marks: 20% of course grade

### Rubric

| Task                             | Marks | Description                                    |
| -------------------------------- | ----- | ---------------------------------------------- |
| Problem Solving – Flowcharts     | 15    | Flowcharts correctly show program logic        |
| Application Menu Interaction     | 10    | Menu displays correctly and handles user input |
| Task 1 Functionality             | 15    | Correct hexagonal number processing            |
| Task 2 Functionality             | 15    | Correct square number processing               |
| Task 3 Functionality             | 15    | Correct quadratic sequence processing          |
| Adherence to Requirements        | 20    | Logic and requirements fully met               |
| Code Documentation & Conventions | 10    | Proper comments and conventions                |

### Submission instructions

Submit a **zip file** named:

```
Group_No_Project.zip
```

This file must contain:

1. A single PDF containing your flowcharts:
   `Group_No_Flowchart.pdf`
2. A single shell script file containing your code:
   `Group_No_Application.sh`
3. A document describing the software used and how work was distributed among team members.
4. Three AI declaration forms (one for each group member).

---

If you want, I can also turn this into a cleaned-up template file or help write the shell script structure.
