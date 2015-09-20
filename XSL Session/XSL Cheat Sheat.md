# XSL Cheat Sheet #

## Basic Set Up ##

Assuming this structure for your XML

    <root>
      <element attribute="value">value</element>
      <element attribute="value">value</element>
      <parent>
        <child attribute="value">value</child>
      </parent>  
    </root>

Link your XML file to your XSL by placing the following as the **first** and **second** line of your **XML** file

    <?xml version="1.0" encoding="UTF-8"?>
    <?xml-stylesheet type="text/xsl" href="filename.xsl"?>

Start you **XSL** file by explaining which version of XML you used

    <?xml version="1.0" encoding="UTF-8"?>

In your second line, explain which version of XSL you are using (use 1.0 for in-browser transformations)

    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

In the third line, explain what your XSL will transform your XML into

    <xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>

Start (and end) your template by indicating the outermost part of the XML structure that you will refer to.

    <xsl:template match="root">
    </xsl:template>

End your stylesheet by closing the stylesheet element

    </xsl:stylesheet>

## Basic Printing Commands (Inside the Template) ##

Print an element's value

    <xsl:value-of select="element"/>

Print an attribute's value

    <xsl:value-of select="element/@attribute"/>

Print a child element's value

    <xsl:value-of select="parent/child"/>

## Basic Logic Tests ##

Check if a value is empty, and if it isn't, do something

    <xsl:if test="element != ''">
      Hello, world
    </xsl:if>

Check if a value is something specific, and if it is, do something

    <xsl:if test="element = 'specific'">
      Howdy, world
    </xsl:if>

## Loops ##

Go (iterate) through all the examples of a type of element, and do something

    <xsl:for-each select="element">
      <xsl:value-of select="."/>
    </xsl:for-each>

*When you are within a for-each loop, if you want to use the same element as the loop criteria, you can either write select="element" or select="."*

If you have several instances of an element, check to see if it is the first one listed

    <xsl:if test="position() = 1">
    </xsl:if>

Or check to see if it is the last one listed

     <xsl:if test="position() = last()">
     </xsl:if>

If you want to sort the values A-Z, add this after the xsl:if

    <xsl:sort select="." date-type="text" order="ascending"/>

If you want to sort the values 9-1, add this

    <xsl:sort select="." data-type="number" order="descending"/>


# Example #

    <?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="root">
      Title: <xsl:value-of select="parent/child"/>
      Type: <xsl:value-of select="parent/child/@attribute"/>
      Keywords: <xsl:for-each select="element"><xsl:sort select="." date-type="text" order="ascending"/><xsl:value-of select="."/><xsl:if test="position() != last()">,  </xsl:if> </xsl:for-each>
    </xsl:template>
    </xsl:stylesheet>
