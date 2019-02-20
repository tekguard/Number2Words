# Number to Words

### Assignment

Given a 10 digit phone number, you must return all possible words or combination of words from the provided dictionary, that can be mapped back as a whole to the number. 

With this we can generate numbers like 1-800-motortruck which is easier to remember then 1-800-6686787825
The phone number mapping to letters is as follows:

2 = a b c

3 = d e f

4 = g h i

5 = j k l

6 = m n o

7 = p q r s

8 = t u v

9 = w x y z

The phone numbers will never contain a 0 or 1. 

Words have to be at least 3 characters.

To get give you an initial verifiation, the following must be true:

6686787825 should return the following list [["motor", "usual"], ["noun", "struck"], ["nouns", "truck"], ["nouns", "usual"], ["onto", "struck"], "motortruck"]

2282668687 should return the following list [["act", "amounts"], ["act", "contour"], ["acta", "mounts"], ["bat", "amounts"], ["bat", "contour"], ["cat", "contour"], "catamounts"]

The conversion of a 10 digit phone number should be performed within 1000ms.


### English words library

## Execution

To Run Application with ruby envinoment set use below command:

     ./bin/setup

To Run Application withouh ruby envinoment set use below command:

      ./bin/run_with_spec


## Structure

Application path: lib/main.rb





