
# XSL and You #
 
**XSL** (eXtensible Stylesheet Language) transforms **XML** in much the same way as **CSS** (Cascading Stylesheet) transforms **HTML**, defining the layout, colourisation, font and size of your data, as well as determining which data is displayed or hidden.
 
By separating your formatting instructions from your data, you can apply the same formatting to several datasets or create a series of different outputs from a single database.
 
In order to transform your data, you need three basic components:
 
+ An XML database
+ An XSL stylesheet
+ An XSL transformer
 
The **XSL transformer** is a script that applies your XSL stylesheet to your XML database. This can be done via the command line [1], with an XML development environment [2], or by using the internal transformer of certain web-browsers [3].
 
Before writing any XSL stylesheet, carefully consider:
 
+ The structure, nature and extent of your data
+ The file format of your desired output
+ The data you wish to display
+ The order in which you wish your data displayed
+ The layout in which you wish your data displayed
 
Basic XSL transformers can create three different outputs:
 
+ XML - Another Database
+ HTML - A Website
+ TXT - Any plain-text format
+ XSL:FO - XML Formatting Objects used to create basic PDFs and Postscript files
 
**TXT** transformations are arguably the most valuable, allowing you to create not only .txt files, but also **.csv** (comma-separated value) or **.tsv** (tab-separated value) files used by spreadsheet programmes and **.md** (MarkDown) files for formatted human-and-machine-readable documents. As .md files can be easily converted into HTML, DOCX and PDF files via the **Pandoc** convertor, it is one of the most versatile filetypes.
 
However, you may wish to display your data differently in different contexts. A website may only contain certain data, organised in a specialised manner to facilitate linear reading within a web browser, whereas the CSV file may contain a much larger selection of data, organised to allow sorting, filtering and calculations by the end-user.
 
By creating two separate XSL stylesheets, you can create two outputs from the same database; this means you only have to update the data in the original database rather than in each output document, ensuring consistency across your outputs.
 
By visiting the **Programming Historian Live** Github repository, you can download:
 
+ A sample database (SAPDatabase.xml)
+ A sample txt stylesheet (csvcreator.xsl)
+ A sample html stylesheet (htmlcreator.xsl)
+ A cheat sheet of common XSL commands
 
After unzipping these files (make sure not to leave them within the archive window, but actually extract them onto your computer), drag **SAPDatabase.xml** into a open web-browser (either IE or Firefox).
 
You should see a (simply) formatted HTML document, displaying the bibliographic and main text of every record in the database.
 
Open the SAPDatabase.xml in any plain-text editor (notepad, Wordpad, ATOM). At the top of the screen you will see the stylesheet declaration:
 
    <?xml-stylesheet type="text/xsl" href="htmlcreator.xsl"?>
 
Change htmlcreator.xsl to csvcreator.xsl. Save the file and reload your web-browser.
 
You should now see the data re-organised into a basic comma-separated value format. This can be saved or copy-and-pasted into your preferred spreadsheet programme for analysis.
 
If you are comfortable with HTML, open the htmlcreator.xsl in your plain-text editor, otherwise open csvcreator.xsl. *Make sure you keep the SAPDatabase.xml open as well*
 
Before making any changes, save your file as a new xsl document (mystyle.xsl)
 
Using the XSL cheat sheet and the original database, make a subtle change to the XSL file, such as including a different range of data or formatting it in a different manner.
 
Save the XSL file and return to you SAPdatabase.xml. Change csvcreator.xsl to mystyle.xsl and save.
 
Reload your web-browser.
 
Continue to modify your existing xsl file or start from scratch!
 
Remember, necessity is the mother of invention and this is particularly true for programming, scripting and encoding. Learning commands in abstract is helpful, but first you must have a problem to solve! What do you want from this dataset?
 
### Notes ###
[1] A feature-limited version of of the Java extension Saxon is available for free from the publisher's website; premium features require a paid license. Once installed, the basic -line instruction is
 
    java net.sf.saxon.Transform -s:file.xml -xsl:file.xsl > output.txt
 
[2] A free-trial of the development environment OxygenXML is available from the publisher's website. An educational license is available for 99USD.
 
[3] Internet Explorer, Chrome and Firefox all contain internal transformers, but in-built security features usually prevent Chrome from running local transformations. All three browsers are currently limited to XSL 1.0 transformations. To transform a file with your browser, include a XSL stylesheet declaration within your XML file and then open the XML file in your browser.
