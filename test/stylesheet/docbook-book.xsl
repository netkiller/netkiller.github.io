<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:redirect="org.apache.xalan.xslt.extensions.Redirect"
extension-element-prefixes="redirect">
<xsl:output method="html"/>
<xsl:template match="/">
<xsl:choose>
<xsl:when test="element-available('redirect:write')">
	<xsl:for-each select="/book/chapter">
		<redirect:write select="concat('chapter', position(), '.html')">
			<html>
			<head>
				<title><xsl:value-of select="book/bookinfo/title"/></title>
			</head>
			<body>
				<h1><xsl:value-of select="title"/></h1>
				<!--
				<xsl:apply-templates select="para"/>
				-->

				<br>
				<xsl:if test="not(position()=1)">
					<p><a href="chapter{position()-1}.html">Previous</a>
				</xsl:if>
				<xsl:if test="not(position()=last())">
					|<a href="chapter{position()+1}.html">Next</a></p>
				</xsl:if>
			</body>
			</html>
		</redirect:write>
	</xsl:for-each>
</xsl:when>
<xsl:otherwise>
<html>
<head>
<title><xsl:value-of select="/book/title"/></title>
</head>
<xsl:for-each select="/book/chapter">
	<h1><xsl:value-of select="title"/></h1>
	<xsl:apply-templates />
</xsl:for-each>
</html>
</xsl:otherwise>
</xsl:choose>
</xsl:template>

<xsl:template match="para">
<p><xsl:apply-templates select="*|text()"/></p>
</xsl:template>



	<xsl:template match="book/bookinfo/title">
		<h1>
		  <xsl:apply-templates/>  <br />
		</h1>
	</xsl:template>
	<xsl:template match="book/bookinfo/author">
		<address>
		  <xsl:apply-templates select="firstname" />  <br />
		  <xsl:apply-templates select="surname" /> <br />
		  <xsl:apply-templates select="affiliation/address/email" /> <br />
		</address>
	</xsl:template>
	<xsl:template match="book/bookinfo/copyright">
		<address>
		  <xsl:apply-templates/>  <br />	  
		</address>
	</xsl:template>	
	<xsl:template match="book/bookinfo/abstract">
		<h2>
		  <xsl:apply-templates select="title" />  <br />	  
		</h2>
		<p><xsl:apply-templates select="para" /></p>
	</xsl:template>			

  <xsl:template match="chapter">
      <xsl:apply-templates/>
    <br />
 	<p align="right"><a href="#top">Top</a></p>
 	<br />
  </xsl:template>
	
  <xsl:template match="para">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  <xsl:template match="EM">
    <i>
      <xsl:apply-templates/>
    </i>
  </xsl:template>
  <xsl:template match="section">
  	========================================================== <br />
    <b>
		
	    <xsl:value-of select="title"/> <br />
		
    </b>
    ========================================================== <br />
    <p>
    	<xsl:apply-templates/>
    </p>
  </xsl:template>
	<xsl:template match="graphic">
		<br /><img src="{@fileref}" border="0" /><br />
     <!--
     <xsl:apply-templates select="document(@fileref)" />
      --> 
  </xsl:template>
  <xsl:template match="ulink">
    <a href="{@url}" border="0" >
 <xsl:apply-templates/> </a>   <br />       
  </xsl:template>
 
   <xsl:template match="procedure/setp">
		<li>
			<xsl:value-of select="setp/para"/>
		</li>  
  </xsl:template>
 
   <xsl:template match="procedure">

    <ol>
		<xsl:apply-templates/>
    </ol>   
  </xsl:template>


</xsl:stylesheet>