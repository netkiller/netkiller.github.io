<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" >
	<xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
    
	   <xsl:strip-space elements="*"/>

    <xsl:template match="*">
        <xsl:apply-templates select="node()|@*"/>
        <xsl:text> </xsl:text>
    </xsl:template>

    <xsl:template match="section">
<xsl:apply-templates select="title*"/>

<xsl:text> ---------------------- </xsl:text>

    </xsl:template>

	
</xsl:stylesheet>

