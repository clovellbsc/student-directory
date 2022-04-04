# student-directory

The student-directory allows you to manage the list of students enrolled at Villains Academy.

## How to use
* Create a csv file, which will be where your students are saved to and loaded from. Type the following command into your terminal:
```
$ touch students.csv
```
* You can now run the programme by typing the following comman into your terminal:
``` shell
$ ruby directory.rb
```
* This should show the following in the terminal:
```
File successfully loaded
No file passed to the ARGV, 0 students loaded from students.csv as default
1. Input the students
2. Show the students
3. Save the list to students.csv
4. Load the list from students.csv
9. Exit
```
* You can choose from the list by typing the number and hitting enter:
```
$ 1
```
* This should bring up the following:
```
Input students selected
Please enter the names of the students
To finish, just hit return twice
```
* You can now enter a name and hit return, which shows the following:
```
Chris
Please enter the cohort of Chris
```
* Once you enter the cohort and hit return:
```
Please enter the cohort of Chris
February 
Now we have 1 students
Please enter the names of the students
To finish, just hit return twice
```
* You can either continue entering names or hit enter. Hitting return brings up the main menu:
```
Please enter the names of the students
To finish, just hit return twice

1. Input the students
2. Show the students
3. Save the list to students.csv
4. Load the list from students.csv
9. Exit
```
• You can show a list of the students by typing 2 and hitting return, which brings up the main menu:
```
2
Show students selected
The students of Villains Academy
-------------
Chris (February  cohort)
Overall, we have 1 great students
1. Input the students
2. Show the students
3. Save the list to students.csv
4. Load the list from students.csv
9. Exit
```
* You can save the students by typing 3 and hitting return, which asks for the filename you wish to save to:
```
3
Save students selected
Set the filename you wish to save to
```
* You can either choose to save to a new file or you can type an existing one (i.e. students.csv):
```
Save students selected
Set the filename you wish to save to
students.csv
1. Input the students
2. Show the students
3. Save the list to students.csv
4. Load the list from students.csv
9. Exit
```
* If you save to a file that does not exist, the file will be created
* You can Load a secondary file by typing 4 and hitting return, a prompt for the filename you wish to load pops up:
```
4
Load Students selected
Select the file you wish to load
```
* If you type an incorrect file, the following pops up, whereby you can input another filename:
```
Load Students selected
Select the file you wish to load
fake-file
This file does not exist, please enter a valid filename
```
* If you load a file that exists, it will be loaded to the list:
```
second-directory.csv
File successfully loaded
1. Input the students
2. Show the students
3. Save the list to students.csv
4. Load the list from students.csv
9. Exit
```
* If you type 9 and hit return the file will be terminated:
```
1. Input the students
2. Show the students
3. Save the list to students.csv
4. Load the list from students.csv
9. Exit
9
Exit selected, this programme will now terminate
```
* To load the file after exiting, you will have to reload the programme:
```
$ ruby directory.rb
```
* If you have added any students to the students.csv file then they will be loaded on starting the programme:
```
File successfully loaded
No file passed to the ARGV, 1 students loaded from students.csv as default
1. Input the students
2. Show the students
3. Save the list to students.csv
4. Load the list from students.csv
9. Exit
```
* If you want to load another csv (as opposed to students.csv) on initiating the programme, you can pass the file name e.g. second-directory.csv:
```
ruby student-directory.rb second-directory.csv
```
* This then shows what students have been loaded:
```
File successfully loaded
Loaded 0 from second-directory.csv
1. Input the students
2. Show the students
3. Save the list to students.csv
4. Load the list from students.csv
9. Exit
```
