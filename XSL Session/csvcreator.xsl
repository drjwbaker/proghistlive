<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

<xsl:output method="text" version="4.0" encoding="UTF-8"/>

<xsl:template match="root">ID,DATE,HEADER
<xsl:for-each select="TEI">
<xsl:value-of select="id"/>,<xsl:value-of select="date"/>,<xsl:value-of select="header"/>
<xsl:text>&#xa;</xsl:text></xsl:for-each>
</xsl:template>

</xsl:stylesheet>
