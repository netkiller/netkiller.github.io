<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" >
    <xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
    <xsl:template match="/">
        <xsl:for-each select="script/command" xml:space="preserve">at -f <xsl:value-of select="username"/> <xsl:value-of select="startTime/@hours"/>:<xsl:value-of select="startTime/@minutes"/> <xsl:value-of select="startDate"/><xsl:text>
</xsl:text></xsl:for-each> 
    </xsl:template>
</xsl:stylesheet>
