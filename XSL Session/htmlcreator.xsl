<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

<xsl:output method="html" version="4.0" encoding="UTF-8"/>

<xsl:template match="root"> <!-- This tells it to look at the whole database, called root -->
<xsl:for-each select="TEI"> <!-- This tells it to look at each record, called TEI, and do the following -->
<h1> <!-- Use heading 1 -->
<i><xsl:value-of select="title"/></i>, <!-- Print the title in italics, add a comma-->
<xsl:value-of select="date"/> <!-- Print the date -->
<xsl:for-each select="text/p/pb"> <!-- Look for each page break -->
<xsl:if test="position()=1">, p. </xsl:if> <!-- Before the first page number, put a comma and p. -->
<xsl:value-of select="@n"/> <!-- place each page number listed in the record -->
<xsl:if test="position()!=last()"><xsl:text>, </xsl:text></xsl:if> <!-- For all but the last one, add a comma after -->
</xsl:for-each> <!-- This is the end of the page numbering secion -->
(<xsl:value-of select="id"/>)</h1> <!-- Print the id number of the record in brackets, and end the heading -->

<xsl:for-each select="text/p"> <!-- For each paragraph in the text -->
<p><xsl:value-of select="."/></p> <!-- Print the paragraph, separating them into distinct paragraphs -->
</xsl:for-each> <!-- End of text -->

</xsl:for-each> <!-- End of record -->
</xsl:template> <!-- End of instructions for the whole database -->

</xsl:stylesheet>
