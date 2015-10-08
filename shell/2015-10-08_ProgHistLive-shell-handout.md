# Programming Historian Live: Shell

_____
### Commands

- `pwd`: a command that prints to the shell where you are on your computer
- `ls`: a command that prints to the shell a list of directory contents
- `cd`: a command that lets you move around your computer
- `*`: a wildcard that is a place holder for anything
- `wc`: a command that counts files, where the flags `-w` and `-l` to count the words and lines in a file or a series of files respectively.
- `>`: a redirector that enables you to save outputs to file
- `grep`: a command that searches for instances of a string in files
- `grep -FLAG`: flags for `grep` that count instances of a string (`-c`), treturn a case insensitive search for a string (`-i`), and return a whole word only search (`-w`)
- `--file=list.txt`: syntax that allows you use a file (here `list.txt`) as the source of strings used in a query such as `grep`

_____
### Where to go next

Deborah S. Ray and Eric J. Ray, *Unix and Linux: visual quickstart guide*, 4th edition (2009). Invaluable (and not expensive) as a reference guide - especially if you only use the command line sporadically!

[The Command Line Crash Course](http://cli.learncodethehardway.org/book/) 'learn code the hard way' -- good for reminders of the basics.

[Coursera Computer Science 101](https://www.coursera.org/course/cs101) If you feel you need some context to what we've done today, this is ideal covering how computers work, jargon, and key concepts in programming (such as loops and logic). Free, doesn't have to be taken as a class but in your own time.

Another Coursera course, [Programming for Everybody (Python)](https://www.coursera.org/course/pythonlearn) is available and lasts 10 weeks. So if you have 2-4 hours to spare. Python is popular in research programming as it is readable, relatively simple, and very powerful.

This lesson is based on two Programming Historian lessons I wrote with Ian Milligan (see below), a historian based in Canada. Bill Turkel and the Digital History community more broadly. Bill Turkel has an excellent lesson on text analysis with the shell on [his website](http://williamjturkel.net/2013/06/15/basic-text-analysis-with-command-line-tools-in-linux/) as well as one on ['Named Entity Recognition with Command Line Tools in Linux'](http://williamjturkel.net/2013/06/30/named-entity-recognition-with-command-line-tools-in-linux/) which I thoroughly recommend if you want to automatically find, markup, and count names, places, and organisations in text files

_____
### References

James Baker and Ian Milligan, 'Counting and mining research data with Unix', *The Programming Historian* ([2014](http://programminghistorian.org/lessons/research-data-with-unix)

Ian Milligan and James Baker, 'Introduction to the Bash Command Line', *The Programming Historian* ([2014](http://programminghistorian.org/lessons/intro-to-bash))
