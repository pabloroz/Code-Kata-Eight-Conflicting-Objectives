Code-Kata-Eight-Conflicting-Objectives
======================================

My own ruby version of http://codekata.pragprog.com/2007/01/kata_eight_conf.html

For this kata, we’re going to write a program to solve a simple problem, and we’re going to write it with three different sub-objectives. Our program is going do process the dictionary we used in previous kata, this time looking for all six letter words which are composed of two concatenated smaller words.  
  
For example:
  
al + bums => albums  
bar + ely => barely  
be + foul => befoul  
con + vex => convex  
here + by => hereby  
jig + saw => jigsaw  
tail + or => tailor  
we + aver => weaver  

Write the program three times.

The first time, make program as readable as you can make it.
The second time, optimize the program to run fast fast as you can make it.
The third time, write as extendible a program as you can.

I added a fourd option to make it as short as I can.

To test it run:

    rake test

to run the benchmark with 5000 words run:

    rake benchmark

to run the benchmark with more or less words run:

    rake benchmark[NUMBER_OF_WORDS]
