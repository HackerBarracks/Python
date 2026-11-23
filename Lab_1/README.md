# Lab 1 — Python Basics (Plain-Language Edition)

## How to Use This README (the Feynman Method)

The Feynman method is a learning technique named after the physicist Richard Feynman. It has four steps:

Learn the idea. Read the "Big Idea" section for the task.
Explain it simply. Pretend you are teaching it to a friend who has never coded. If you can't explain it without jargon, you don't fully understand it yet.
Find your gaps. Wherever your explanation gets stuck or vague, go back and re-read, or test it in Python.
Simplify again. Explain it once more, more briefly. Everyday comparisons help.

## Each task below follows the same layout:

The Big Idea explains the concept in plain words, usually with an everyday comparison.
What You'll Do gives the actual lab steps, reworded.
Watch Out For lists the mistakes beginners usually make.
Explain It Back has questions to answer in your own words. If you can answer them out loud without looking, you've got it. These also help a lot with the Reflection at the end.
Key Words You'll See
Word	What it means
Script	A text file full of Python instructions. Python reads it from top to bottom and runs each line in order. Python scripts end in .py.
GitHub Codespaces	A coding environment that runs in your web browser. It gives you an editor (where you write code) and a terminal (where you run it), without installing anything on your own computer.
Terminal	A text window where you type commands for the computer. You run your scripts here.
Variable	A name that points to a value, a bit like a labelled box with something inside it.
Data type	The kind of value something is. Examples: a whole number (int), a decimal number (float), or text (str, short for "string").
Function	A named action that Python already knows how to do, such as print(). The parentheses are where you give it what it needs to work with.
Method	A function that belongs to a specific kind of value. You call it with a dot, for example "hi".upper().
Comment	A line starting with #. Python ignores comments completely, so they are notes for humans.
Setting Up: What Your Folder Should Look Like

The lab says task1.py and task2.py should be opened, which means they probably already exist in the repository your instructor gave you. You create the rest yourself. By the end, your Codespace folder should look like this:

your-lab1-repo/
├── task1.py      ← already provided (you fill it in)
├── task2.py      ← already provided (you fill it in)
├── task3.py      ← you create this
├── task4.py      ← you create this
├── task5.py      ← you create this
├── task6.py      ← you create this
└── task7.py      ← you create this (see the note in Task 7 about the name)

To make a new file in Codespaces, right-click in the file explorer on the left and choose New File. Then type the full name, including .py.

### How to run a script

In the terminal, make sure you're in the same folder as the file, then type:

bash
python task1.py

python starts the Python program, and task1.py tells it which file to read. If python doesn't work, try python3, which is the same program under a different name on some systems.

## Task 1 — Variables and Dynamic Typing
### The Big Idea

A variable is like a sticky-note label. Writing x = 10 doesn't build a box that can only hold numbers. It sticks the label x onto the value 10.

Later, x = "hello" peels the label off 10 and sticks it onto the text "hello". Python doesn't object, because the label never had a type. Only the value it points to has a type.

This is called dynamic typing. "Dynamic" means the type is decided while the program is running, based on whatever value the variable points to at that moment. Some other languages, like Java or C, make you declare up front that a variable is an integer forever. Python doesn't.

type() is a function that answers one question: "What kind of value is this?"

python
box = 3.5
print(box, type(box))   # 3.5 <class 'float'>

Here <class 'float'> is Python's way of saying "this is a float." In Python, every type is called a "class," so you will see that word a lot.

What You'll Do
Open task1.py and fill in the comment block at the top.
Create a variable called x and set it to the number 10.
Print x and its type.
On the next line, set x to the text "hello".
Print x and its type again.
Write a comment (a line starting with #) describing what you noticed about how the type changed.
Run it: python task1.py
Watch Out For
10 (no quotes) is a number. "10" (with quotes) is text that happens to contain the characters 1 and 0. Quotes make something a string.
The comment must start with #, or Python will try to run your sentence as code and crash.
Explain It Back
If x held a number and then held text, did the variable change type, or did it just point to a different value?
In one sentence, what does type() tell you?

## Task 2 — String Concatenation
### The Big Idea

Concatenation means joining things end to end, like coupling train cars. In Python, using + on two strings glues them together:

python
greeting = "Good" + "morning"
print(greeting)   # Goodmorning

Notice there's no space between the words. Python joins exactly what you give it and adds nothing. If you want a space, you have to include it yourself: "Good " + "morning".

It's interesting that + does different jobs depending on the type. With numbers it adds (2 + 3 gives 5). With strings it joins ("2" + "3" gives "23"). The type of the values decides what the operator means.

What You'll Do
Open task2.py and fill in the comments.
Create a variable called message with the value "Welcome to SRT111".
Print message.
Use + to join message with another string of your choice, and print the result.
Run it: python task2.py
Watch Out For
Missing spaces, as described above. The output Welcome to SRT111Have a great day is a common first result.
You can't use + to join a string and a number directly. "Age: " + 25 causes an error. You'd need "Age: " + str(25). You won't need this for this task, but it's good to know why that error happens.
Explain It Back
Why does "2" + "3" give "23" and not 5?
What does Python add between two strings when you join them? (Trick question: nothing.)


## Task 3 — User Input and Arithmetic
### The Big Idea

input() always gives you text, even if the user types a number. Think of input() as someone handing you a written note. If the note says "5," you're holding a piece of paper with the character 5 on it, not the actual quantity five. Before you can do math with it, you have to convert it.

float() does that conversion. It reads the text and turns it into a real decimal number. ("Float" is short for "floating-point number," which is how computers store numbers with decimals.)

python
answer = input("Type a number: ")   # the user types 5 → answer is "5" (text)
answer = float(answer)              # now answer is 5.0 (a number)

You can also do both on one line: float(input("Type a number: ")). Python works from the inside out, so input() runs first, and its result is handed to float().

The Seven Operators, Explained with Pizza

Suppose you have 17 slices of pizza and 5 people:

Operator	Name	Example	Meaning
+	Addition	17 + 5 → 22	Combine them.
-	Subtraction	17 - 5 → 12	Take away.
*	Multiplication	17 * 5 → 85	Repeated addition.
/	Division	17 / 5 → 3.4	Exact split, decimals included.
//	Floor division	17 // 5 → 3	How many whole slices each person gets.
%	Modulus	17 % 5 → 2	How many slices are left over after sharing evenly.
**	Exponent	2 ** 3 → 8	2 × 2 × 2 ("2 to the power of 3").

// and % are a pair. One tells you the whole number of times something fits, and the other tells you what's left over. That's exactly long division from grade school, the "3 remainder 2" answer.

What You'll Do
Create a new file named task3.py and add the same comment block as the earlier tasks.
Make a variable num1 that gets its value from the user with input().
Make a variable num2 the same way.
Convert both to decimal numbers with float().
Do all seven operations and print each result in this format:
num1 + num2 = ....
num1 - num2 = ....
num1 * num2 = ....
num1 ** num2 = ....
num1 / num2 = ....
num1 // num2 = ....
num1 % num2 = ....

Hint for the printing pattern: print() can take several items separated by commas, and it puts a space between each one. For example, print("a + b =", a + b) prints the label and then the calculated answer. 6. Run it: python task3.py. The script will pause and wait for you to type the two numbers.

Watch Out For
If you forget float(), then + will glue the text together ("5" + "3" gives "53"), and the other operators will crash. This is the most common mistake in this task.
If you enter 0 for num2, then /, //, and % will crash with a ZeroDivisionError, because you can't split something into zero groups. Use a non-zero number for your screenshot.
Big numbers with ** grow very fast. Something like 50 ** 50 gives a huge result, so small numbers make a cleaner screenshot.
Explain It Back
Why do you need float() even though the user typed a number?
Using the pizza example, explain the difference between /, //, and % in your own words.
## Task 4 — The math Module
### The Big Idea

A module is a toolbox of extra code that someone has already written. Python comes with many of them, but it doesn't open them all by default, because that would waste memory. import math means "open the math toolbox so I can use what's inside."

Once it's open, you reach into it with a dot: math.pi means "the pi that lives inside math." That's the same dot idea as .upper() in the next task: the dot means "belongs to."

math.pi is the constant π (about 3.14159). A constant is a value that never changes. Using math.pi is more accurate than typing 3.14 yourself.

The formula for the area of a circle is area = π × r², where r is the radius (the distance from the center to the edge). "r²" means r × r, which in Python is r ** 2. That's the exponent operator from Task 3.

What You'll Do
Create a new file. The earlier files are named task1.py, task2.py, and task3.py, so following that naming pattern (the "convention" the lab mentions) means this one is task4.py.
Add the comment block at the top.
Write import math. By convention, imports go at the very top of the file, right after the comments, so anyone reading the file can see at a glance which toolboxes it uses.
Make a variable r that gets its value from the user with input().
Convert r to a float with float().
Calculate the area using math.pi and the formula above.
Print the area.
Run it: python task4.py
Watch Out For
Writing pi by itself instead of math.pi causes a NameError, because Python doesn't know which pi you mean unless you say which toolbox it's in.
Forgetting import math causes the same NameError on math.
Explain It Back
What does import actually do, and why doesn't Python just load every module automatically?
What does the dot in math.pi mean?


## Task 5 — String Methods and .format()
### The Big Idea

Part 1: .upper()

Strings come with built-in abilities called methods. .upper() gives you back an UPPERCASE copy of the string.

The word "copy" matters. Strings in Python are immutable, which means they can never be changed once created. So .upper() doesn't change your original string. It makes a new one:

python
city = "toronto"
print(city.upper())   # TORONTO
print(city)           # toronto  ← the original didn't change

Part 2: .format()

.format() works like a fill-in-the-blanks form. The {} are the blanks, and the values you put inside .format(...) fill them in, in order: the first value goes in the first {}, the second value in the second {}, and so on.

python
print("I have {} cats and {} dogs.".format(2, 1))
\\# I have 2 cats and 1 dogs.

A nice bonus is that .format() converts numbers to text for you. You don't need str() the way you would with + concatenation in Task 2.

What You'll Do
Create task5.py (following the naming pattern) and add the comment block.
Make a variable name set to your name (in quotes, since it's text).
Print name in uppercase using .upper().
Make a variable age set to your age (no quotes, since it's a number).
Print the birthday message using exactly the statement the lab gives you:
python
print("How are you {}? Happy {}th birthday!".format(name, age))
Run it: python task5.py
Watch Out For
name.upper without the () doesn't run the method. It prints something odd like <built-in method upper of str object ...>. The parentheses are what actually run it.
The order inside .format(name, age) matters. If you swap them, you'd get "How are you 25? Happy Adonisth birthday!"
The message will say "th" no matter what (for example "21th"). That's expected, because the template hard-codes it.
Explain It Back
After running name.upper(), is name now uppercase? Why or why not?
How does .format() decide which value goes into which {}?


## Task 6 — Indexing and Slicing
### The Big Idea

A string is a row of characters, and every character has a seat number called its index. The trick is that Python starts counting at 0, not 1.

Here's the word PYTHON with its seat numbers:

 character:   P    Y    T    H    O    N
 index:       0    1    2    3    4    5
 negative:   -6   -5   -4   -3   -2   -1

Indexing picks one character by its seat number: "PYTHON"[0] gives "P".

Negative indexing counts from the back instead of the front: -1 is always the last character, -2 the second last, and so on. This is handy when you care about the end of a string and don't want to count the whole thing.

Slicing picks a range of characters: text[start:stop]. The rule to remember is that the slice includes start but stops just before stop. Think of it like "from the 2 o'clock mark up to, but not including, the 5 o'clock mark":

python
"PYTHON"[1:4]    # "YTH"   → seats 1, 2, 3 (not 4)
"PYTHON"[-4:-1]  # "THO"   → seats -4, -3, -2 (not -1)

Why does Python stop before the end number? One reason is that stop - start then equals the number of characters you get: [1:4] gives you 4 − 1 = 3 characters. That makes slice lengths easy to calculate.

Also, spaces count as characters. In "The quick", the space between the words has its own index.

What You'll Do
Create task6.py and add the comment block.
Create the variable exactly as given:
python
words = "The quick brown fox jumps over the lazy dog"
Use indexing to print the first character and the 17th character.
Use negative indexing (slicing with negative numbers) to print the word "jumps", and then the word "quick".
Print all the characters between index 2 and 15.
Print the exact text "uick brown fox ju" using a slice.
Run it: python task6.py
Watch Out For
"First" is index 0, and "17th" is index 16. Human counting starts at 1, and Python counting starts at 0, so a position in human words is always one more than its index. (The lab's wording is a little ambiguous here. If you're unsure whether they meant "the 17th character" or "index 17," you could print both and label them in a comment.)
"Between index 2 and 15" has the same kind of ambiguity: words[2:15] gives index 2 through 14, while words[2:16] includes index 15. Pick one and write a comment saying which you chose and why.
Counting 43 characters by hand is easy to get wrong. A suggestion, if you get stuck: this short loop prints every index next to its character, so you can read positions straight off the screen:
python
for i, ch in enumerate(words):
    print(i, ch)

You don't need to keep this in your final script; it's just a helper for finding the numbers.

Explain It Back
Why is the first character at index 0 and not 1?
In your own words, what's the difference between indexing and slicing? (This is Reflection question 2.)
In text[3:7], is the character at index 7 included?


## Task 7 — Decimal Numbers and Rounded Output
### The Big Idea

Computers store decimal numbers (floats) in binary, using only 1s and 0s. Some decimals that look simple to us, like 0.1, can't be stored perfectly in binary. That's similar to how 1/3 can't be written perfectly in decimal (0.3333... forever). The result is that multiplying floats sometimes gives slightly messy answers:

python
print(0.1 * 3)   # 0.30000000000000004

The math isn't wrong. It's a tiny storage rounding error. That's why we format numbers when we show them to people.

{:.2f} is a {} blank with formatting instructions added. You can read it piece by piece:

: means "formatting instructions start here."
.2 means "show 2 digits after the decimal point."
f means "display it as a regular decimal number" (short for fixed-point).
python
print("Total: {:.2f}".format(0.1 * 3))   # Total: 0.30

The rounding only affects what's displayed. The actual value stored in memory doesn't change.

What You'll Do
Create the file for this task (see the note about its name below) and add the comment block.
Create a variable quantity set to any decimal number you like (for example 2.75).
Ask the user for a decimal value for stock using input(), and convert it with float() (just like Task 3).
Print the product with the statement the lab gives you:
python
print("Product: {}".format(quantity * stock))
Print the product again, this time using {:.2f} so it shows exactly two decimal places.
Run it.
Watch Out For
The file name doesn't match. This task says to name the file lab1f.py, but the Sign-Off section at the bottom lists task7.py. It's worth asking your instructor which one they want. If you can't ask, task7.py matches the other six files and the Sign-Off list.
{:.2f} only works on numbers. If you forgot float() on stock, you'll have an error before you even get to this line, because you can't multiply text by a decimal.
Pick values that make the rounding visible, such as 2.75 and 3.333. That way the two print lines look different in your screenshot and clearly show the rounding working.
Explain It Back
Why might 0.1 * 3 not print exactly 0.3?
Read {:.2f} out loud piece by piece. What does each part mean?
Does {:.2f} change the number stored in the variable, or just how it looks when printed?
Reflection

At the end of your Word document, answer these in your own words, in 2–4 sentences each. If you did the "Explain It Back" questions above, you already have most of the material.

What is dynamic typing in Python, and how did you see it in these exercises? Revisit Task 1: what happened to x's type, and why didn't Python complain?
What is the difference between indexing and slicing with strings? Revisit Task 6: one picks a single character, the other picks a range. What's the rule about the stop number?
What are your key takeaways from this lab? Which "Explain It Back" question was hardest to answer at first? That's usually a good thing to write about.
Submission Checklist

For each of the 7 tasks:

[ ] Write the script in Codespaces.
[ ] Run it from the terminal.
