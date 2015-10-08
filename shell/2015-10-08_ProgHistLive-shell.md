# Programming Historian Live: Shell

_____
### Installation (to be completed before the session)

Windows users, see the section entitled 'Installing Git Bash' in the Programming Historian lesson [*Introduction to the Bash Command Line*](http://programminghistorian.org/lessons/intro-to-bash). OS X and Linux users, simply make sure you know how to find your 'Terminal'.

Download data and put the folder on your desktop.

______
### Introduction

In this session we will introduce programming by looking at how data can be manipulated, counted, and mined using the Unix shell, a command line interface to your computer and the files it has access to.

_____
### Basics - navigating the shell

Start by opening your shell. When you run it, you will see a black window with a cursor flashing next to a dollar sign. This is our command line.

If, when opening a command window or at any other time today, you are unsure of where you are in a computer's file system, you can find out what directory you are in using `pwd` command, which stands for "print working directory", and hitting enter - which executes commands in the shell. Try typing `pwd` and hitting enter.

To orient ourselves type `ls`, hit enter, and you will see a list of every file and directory within your current location.

To go to another directory on that list use the `cd` or Change Directory command. 

If you type `cd Desktop` you are now on your desktop. To double check, type `pwd` and you should see something that represents your desktop.

You'll note that this only takes you `down` through your directory structure (as in into more nested directories). If you want to go back, you can type `cd ..`. This moves us 'up' one directory, putting us back where we started. If you ever get completely lost, the command `cd --` will bring you right back to the home directory, right where you started.

______
### Manipulating, counting and mining research data

Now you can move around, we can go onto something more interesting.

______
#### Counting

In the Unix shell, use the `cd` command to navigate to the directory that contains our data: `data`. Remember, if at any time you are not sure where you are in your directory structure, type `pwd` and hit enter.

Type `ls` and then hit enter. This prints, or displays, a list of all files and subdirectories.

The directory contains a single text file and four .tsv tabular data files I prepared earlier: these contain metadata for all History journal articles the contain `africa` or `america` in their titles.

*Note: TSV files are those in which within each row the units of data (or cells) are separated by tabs. They are similar to CSV (comma seperated value) files were the values are separated by commas. The latter are more common but can cause problems with the kind of data we have, where commas can be found within the cells (though with the right encoding this can be overcome). Either way both can be read in simple text editors or in spreadsheet programs such as Libre Office Calc or Microsoft Excel.*

The Unix command for counting is `wc`. But `wc` doesn't work with what we call 'flags': operators that change the behaviour of a command. Type `wc -w *.tsv` and hit enter. The flag `-w` combined with `wc` instructs the computer to print a word count. `*.tsv` counts all the tsv files in the directory (`*` means anything, which - note - is slightly different from regex). The results are printed to the shell.

If you were more concerned number of entries (or lines) than the number of words, you can use the line count flag. Type `wc -l *.tsv` and hit enter. Combined with `wc` the flag `-l` prints a line count and the name of the filed that are to be counted.

So here we have a fast and simple means of comparing these two sets of research data.

As our datasets increase in size you can use the Unix shell to do more than copy these line counts by hand, by the use of print screen, or by copy and paste methods. Using the `>` redirect operator you can export our query results to a new file. Type `wc -l *.tsv > results/TODAY_JA-wc.txt` and hit enter. This runs the same query as before, but rather than print the results within the Unix shell it saves the results as `TODAY_JA-wc.txt`. `head TODAY_JA-wc.txt` to see the file contents in the shell (as it is 10 lines or fewer in length, all the file contents will be shown here).

______
#### Mining

The Unix shell can do much more than count the words, characters, and lines within a file. The `grep` command (meaning 'global regular expression print') is used to search across multiple files for specific strings of characters. It is a powerful research tool can be used to mine your data for characteristics or word clusters that appear across multiple files and then export that data to a new file.

To begin using `grep`, first navigate to the `data` directory (`cd ..`). Here type `grep revolution *.tsv` and hit enter. This query looks across all files in the directory that fit the given criteria (the .tsv files) for instances of the string, or character cluster, `revolution`. It then prints them within the shell.

Press the up arrow once in order to cycle back to your most recent action. Amend `grep revolution *.tsv` to `grep -c revolution *.tsv` and hit enter. The shell now prints the number of times the string revolution appeared in each `*.tsv file`.

Observe this output and amend it to `grep -ci revolution *.tsv`. This repeats the query, but prints a case insensitive count (including instances of both `revolution` and `Revolution`). Note how the count has increased nearly 30 fold for those journal article titles that contain the keyword 'america'.

However this contains every instance of the string 'revolution' including as a single word and as part of other words such as 'revolutionary'. This perhaps isn't as useful as we thought... Thankfully, the `-w` flag instructs `grep` to look for whole words only, giving us greater precision in our search. Type `grep -ciw revolution *.tsv` and hit enter. If we are happy with this query, we can export every line that contains revolution to a single file by entering `grep -iw revolution *.tsv > results/TODAY_JA-iw-revolution.tsv`

Finally, you can use regular expression syntax covered earlier to search for similar words. In `gallic.txt` we have the string `fr[ae]nc[eh]`. The square brackets here ask the machine to match any character in the range specified. So when used with grep as `grep -iw --file=gallic.txt *.tsv` the shell will print out each line containing the string:

- france
- french
- frence
- franch

Again, we could capture this using the `>` operator.

_____
### Where to go next

Deborah S. Ray and Eric J. Ray, *Unix and Linux: visual quickstart guide*, 4th edition (2009). Invaluable (and not expensive) as a reference guide - especially if you only use the command line sporadically!

[The Command Line Crash Course](http://cli.learncodethehardway.org/book/) 'learn code the hard way' -- good for reminders of the basics.

[Coursera Computer Science 101](https://www.coursera.org/course/cs101) If you feel you need some context to what we've done today, this is ideal covering how computers work, jargon, and key concepts in programming (such as loops and logic). Free, doesn't have to be taken as a class but in your own time.

Another Coursera course, [Programming for Everybody (Python)](https://www.coursera.org/course/pythonlearn) is available and lasts 10 weeks. So if you have 2-4 hours to spare. Python is popular in research programming as it is readable, relatively simple, and very powerful.

This lesson is based on two Programming Historian lessons I wrote with Ian Milligan, a historian based in Canada. Bill Turkel and the Digital History community more broadly. Bill Turkel has an excellent lesson on text analysis with the shell on [his website](http://williamjturkel.net/2013/06/15/basic-text-analysis-with-command-line-tools-in-linux/) as well as one on ['Named Entity Recognition with Command Line Tools in Linux'](http://williamjturkel.net/2013/06/30/named-entity-recognition-with-command-line-tools-in-linux/) which I thoroughly recommend if you want to automatically find, markup, and count names, places, and organisations in text files

_____
### References

James Baker and Ian Milligan, 'Counting and mining research data with Unix', *The Programming Historian* ([2014](http://programminghistorian.org/lessons/research-data-with-unix)

Ian Milligan and James Baker, 'Introduction to the Bash Command Line', *The Programming Historian* ([2014](http://programminghistorian.org/lessons/intro-to-bash))
