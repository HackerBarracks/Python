
<p align="center">
  <img width="4562" height="306" alt="Hacker-Barracks-logo" src="https://github.com/user-attachments/assets/da57545f-97e3-4775-a69a-072dd07f6461" />
</p>
<h3 align="center">Python Labs</h3>
 
<p align="center">
  Learn Python from zero, one mission at a time.
</p>
<p align="center">
  <img src="https://img.shields.io/badge/python-3.12-F15A29?style=flat-square&logo=python&logoColor=white" alt="Python 3.12">
  <img src="https://img.shields.io/badge/labs-9-1a1a1a?style=flat-square" alt="9 labs">
  <img src="https://img.shields.io/badge/level-beginner_friendly-F15A29?style=flat-square" alt="Beginner friendly">
</p>
---
 
## Welcome to the Barracks
 
If you're here, you want to learn Python, and you're in the right place. It doesn't matter whether you've never written a line of code or you've copied a few scripts without really understanding them. These labs start at the very beginning and assume nothing.
 
Hacker Barracks is a place to train. Nobody here is expected to know everything already, and asking "why does that work?" is always the right question.
 
## Why These Labs Exist
 
Python is one of the most useful tools in tech, and especially in cybersecurity. Security people use it to automate repetitive jobs, parse logs, process data, build small tools, and make sense of large amounts of information quickly.
 
These labs give you a solid foundation in the essential Python skills and the libraries that come up again and again in real work. By the end, you'll be able to:
 
- write and run your own Python scripts
- control the flow of a program with decisions and loops
- organize your code into functions and classes
- store and organize data with lists, sets and dictionaries
- read from and write to files
- crunch numbers with NumPy, analyze data with pandas, and turn it into charts with Matplotlib
## How We'll Do It
 
**Hands-on missions.** Every lab is broken into small missions, and each mission is a script you write and run yourself. Reading about code only gets you so far. Typing it, running it and fixing it is how it sticks.
 
**The why, not just the what.** Each lab's README explains what a concept is and why it works the way it does, in plain language, before asking you to use it. When something is just a naming convention, the README tells you so.
 
**One step at a time.** The labs build on each other. Lab 1 starts with variables and printing, and by Lab 9 you're teaching your own objects how to add and compare themselves. Work through them in order, and don't skip a mission because it looks easy.
 
**Break things on purpose.** Errors aren't failure. When something crashes, read the error message, make a guess about what went wrong, and test that guess. That habit is the most valuable skill you'll build here.
 
## The Labs
 
| Lab | Topic | What you'll learn |
|:---:|---|---|
| 1 | Python Basics | Variables, data types, dynamic typing, user input, arithmetic, the `math` module, string methods, indexing and slicing |
| 2 | Control Flow | `if` / `else`, nested conditions, validating input, `while` and `for` loops, `break` and `continue` |
| 3 | Functions | Defining and calling functions, parameters, default and keyword arguments, return values, `main()`, `*args` |
| 4 | Data Structures | Lists, sets, dictionaries, and set operations like union, intersection and difference |
| 5 | File Handling | Opening, reading and writing files, file modes, and loading file data into dictionaries |
| 6 | NumPy | Arrays, vectorized math, broadcasting, statistics, 2D arrays, reshaping and boolean indexing |
| 7 | pandas & Matplotlib | Series and DataFrames, filtering and grouping, real CSV data, line, scatter and bar charts, histograms and subplots |
| 8 | Classes & Objects | Classes and objects, constructors, `self`, instance and class variables, and managing many objects at once |
| 9 | Operator Overloading | Special methods like `__add__`, `__sub__`, `__eq__` and `__str__`, applied to complex numbers and fractions |
 
## What You Need
 
- **Python 3.** The labs were written using Python 3.12, and any recent version of Python 3 should work.
- **A code editor.** [VS Code](https://code.visualstudio.com/) is free and works well. If you'd rather not install anything, [GitHub Codespaces](https://github.com/features/codespaces) gives you an editor and a terminal right in your browser.
- **Three libraries for Labs 6 and 7.** NumPy, pandas and Matplotlib don't come with Python, so you install them once with `pip`, Python's package installer:
```bash
pip install numpy pandas matplotlib
```
 
  If your system says `pip` isn't found, try `python -m pip install numpy pandas matplotlib` instead.
 
## Getting Started
 
1. **Download the labs.** Click the green **Code** button at the top of this page, copy the URL, and clone the repository:
```bash
git clone <paste the URL here>
```
 
2. **Move into a lab folder.** Start with Lab 1:
```bash
cd lab-1
```
 
3. **Read the briefing.** Open that lab's `README.md`. It explains every concept and lists the missions.
4. **Write and run each mission.** For example:
```bash
python mission1.py
```
 
   On some systems the command is `python3` instead of `python`. Both run the same program.
 
Here's how the repository is laid out:
 
```
python-labs/
├── assets/
│   └── hacker-barracks-logo.png
├── lab-1/
│   ├── README.md        ← the briefing for this lab
│   ├── mission1.py
│   ├── mission2.py
│   └── ...
├── lab-2/
│   └── ...
├── ...
├── lab-9/
│   └── ...
└── README.md            ← you are here
```
 
## When You Get Stuck
 
You will get stuck, and that's normal. When it happens:
 
- Read the whole error message. The last line usually tells you what went wrong, and the line number tells you where.
- Re-read the concept section of the lab's README. The answer is often in the explanation right before the mission.
- Change one thing at a time and run the script again. If you change five things at once, you won't know which one fixed it.
---
 
<p align="center">
  <a href="https://hackerbarracks.com"><b>hackerbarracks.com</b></a>
</p>
 
