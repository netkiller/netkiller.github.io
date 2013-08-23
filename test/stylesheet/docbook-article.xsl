<?xml version="1.0" encoding="utf-8"?>
<!-- stylesheet by bg7nyt -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
 
                
  <xsl:output method="html"/>
  <xsl:template match="/">
<!--
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
-->
<HTML>
<HEAD>
<TITLE><xsl:value-of select="article/bookinfo/title"/></TITLE>
<META http-equiv="Content-Type" content="text/html; charset=utf-8" />
<META content="陈景峰,netkiller,chen,Linux,Freebsd,Solaris,cisco,oracle,java,cgi,mysql,PostgreSQL,perl,Apache,proFTPd,pureftpd,postfix,Sendmail,Qmail,DNS,Squid,Rsync,SSL" name="keywords" />
<META content="陈景峰,网路杀手,网络杀手,bg7nyt,Ham,火腿" name="keywords" />
<META content="陈景峰" name="description" />
<link rel="shortcut icon" href="favicon.ico" />
<link rel="Bookmark" href="favicon.ico" />
<STYLE type="text/css">A:link {
	FONT-SIZE: 10pt; TEXT-DECORATION: none
}
A:visited {
	FONT-SIZE: 10pt; TEXT-DECORATION: none
}
A:active {
	FONT-SIZE: 10pt; TEXT-DECORATION: none
}
A:hover {
	COLOR: red; TEXT-DECORATION: underline
}
BODY {
	FONT-SIZE: 10pt; LINE-HEIGHT: 13pt
}
TABLE {
	FONT-SIZE: 10pt; LINE-HEIGHT: 13pt
}
TR {
	FONT-SIZE: 10pt; LINE-HEIGHT: 13pt
}
TD {
	FONT-SIZE: 10pt; LINE-HEIGHT: 13pt
}
P {
	TEXT-INDENT: 18pt; LINE-HEIGHT: 13pt
}
.wlink {
	COLOR: #ffffff
}
</STYLE>

</HEAD>

<body bgcolor="DFEFFF" text="#000000">
 <a name="top" />

<table width="90%" border="3" cellspacing="0" cellpadding="5" bgcolor="E0F0FF"  align="center" bordercolor="4FA7FF">
  <tr valign="top"> 
    <td colspan="2" height="27"> 
      <table width="100%" border="1" cellspacing="0" cellpadding="0"  bordercolorlight="4FA7FF" bordercolordark="#FFFFFF" bgcolor="#FFFFFF">
        <tr> 
          <td>  <br />
            <div align="center"> 
            <h1>

            <xsl:value-of select="article/bookinfo/title"/>

             </h1>
            </div>
          </td>
        </tr>
        <tr> 
          <td>
            <div align="center"><xsl:value-of select="article/bookinfo/author"/></div>
          </td>
        </tr>
        <tr> 
          <td> 
            <div align="left"><br />
 
 
<xsl:apply-templates/>             


             </div>
          </td>
        </tr>
        <tr>
          <td>
            <div align="right">注：因为文档时常更新，所以转载请注明原文档出处的URL</div>
          </td>
        </tr>
        <tr>
          <td align="center"><a href="/">主页</a> |<a href="file:///D|/about/neo%20chen.vcf"> vCard </a>|<a href="javascript:window.self.close()"> 关闭</a></td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<div align="center"> 
  <table border="0" cellpadding="0" cellspacing="0" width="444" height="63">
    <tbody> 
    <tr> 
      <td width="100%"> 
        <hr align="center" color="#49c6ba" size="1" width="600" />
      </td>
    </tr>
    <tr> 
      <td width="100%"> 
        <div align="center">
        <font color="#333399" size="2">
          Name: 陈景峰 (Neo Chen)  <br />
          Nickname: netkiller | Callsign: bg7nyt  <br /> 
          QQ:13721218 | ICQ:101888222<br />
          Yahoo: bg7nyt | AIM: bg7nyt | Skype: bg7nyt | Google Talk: bg7nyt<br />
          泡泡:openunix(at)163(dot)com  MSN: ******@hotmail.com<br />
          Email:<a href="mailto:openunix@163.com">openunix(at)163(dot)com</a>
        </font>        
        </div>
 
        
      </td>
    </tr>
    </tbody>
  </table>
</div>

<table width="100%"  border="0">
  <tr>
    <td align="center">
              <form action="http://wwp.icq.com/scripts/WWPMsg.dll" method="post">
                <table valign="top" cellspacing="0" cellpadding="0" border="0">
                  <tr> 
                    <td colspan="5">
                    <a href="http://public.icq.com/public/panels/respondpanel/links/respondpanel.html"><img src="http://public.icq.com/public/panels/respondpanel/images/icqrespond.gif" width="209" height="17" border="0" alt="" /></a>
                    <a href="http://public.icq.com/public/panels/respondpanel/links/webcomm.html"><img src="http://web.icq.com/whitepages/online?icq=101888222&amp;img=3" width="249" height="17" border="0" alt="" /></a>
                    </td>
                  </tr>
                  <tr> 
                    <td rowspan="4">
                    <a href="http://public.icq.com/public/panels/respondpanel/links/wwp.html?101888222"><img src="http://public.icq.com/public/panels/respondpanel/images/visit.gif" width="98" height="68" border="0" alt="" /></a>
                    </td>
                    <td colspan="3"><img src="http://public.icq.com/public/panels/respondpanel/images/respondby.gif" width="261" height="11" border="0" alt="" /></td>
                    <td rowspan="4"><a href="http://public.icq.com/public/panels/respondpanel/links/icq.html"><img src="http://public.icq.com/public/panels/respondpanel/images/whatisicq.gif" width="99" height="68" border="0" alt="" /></a></td>
                  </tr>
                  <tr> 
                    <td><a href="http://public.icq.com/public/panels/respondpanel/links/chat.html?101888222"><img src="http://public.icq.com/public/panels/respondpanel/images/chat.gif" width="87" height="23" border="0" alt="" /></a></td>
                    <td><a href="http://public.icq.com/public/panels/respondpanel/links/message.html?101888222"><img src="http://public.icq.com/public/panels/respondpanel/images/icqme.gif" width="88" height="23" border="0" alt="" /></a></td>
                    <td><a href="http://public.icq.com/public/panels/respondpanel/links/add.html?101888222"><img src="http://public.icq.com/public/panels/respondpanel/images/addme.gif" width="87" height="23" border="0" alt="" /></a></td>
                  </tr>
                  <tr> 
                    <td colspan="3"><img src="http://public.icq.com/public/panels/respondpanel/images/ifyoudont.gif" width="261" height="11" border="0" alt="" /></td>
                  </tr>
                  <tr> 
                    <td><a href="http://public.icq.com/public/panels/respondpanel/links/wwp.html?101888222"><img src="http://public.icq.com/public/panels/respondpanel/images/pageme.gif" width="87" height="23" border="0" alt="" /></a></td>
                    <td><a href="http://public.icq.com/public/panels/respondpanel/links/zoom.html?101888222"><img src="http://public.icq.com/public/panels/respondpanel/images/zoom.gif" width="87" height="23" border="0" alt="" /></a></td>
                    <td><a href="http://public.icq.com/public/panels/respondpanel/links/pager.html?openunix@163.com,101888222"><img src="http://public.icq.com/public/panels/respondpanel/images/email.gif" width="87" height="23" border="0" alt="" /></a></td>
                  </tr>
                </table>
              </form>	
	</td>
  </tr>
  <tr>
    <td align="center">

<!-- Begin AIM Remote -->
<table>
	<tr>
		<td>
			<nobr>
			<a href="http://www.aol.co.uk/aim/register/register.html"><img src="http://www.aol.co.uk/aim/remote/gr/aimhor_man.gif" width="37" height="45" border="0" alt="Download AIM" /></a>
			<img src="http://www.aol.co.uk/aim/remote/gr/aimhor_leftsm.gif" width="81" height="45" border="0" alt="AIM Remote" />
			<a href="aim:goim?screenname=bg7nyt&amp;message=Hi.+Are+you+there?"><img src="http://www.aol.co.uk/aim/remote/gr/aimhor_im.gif" width="103" height="45" border="0" alt="Send me an Instant Message" /></a>
			<a href="aim:addbuddy?screenname=bg7nyt"><img src="http://www.aol.co.uk/aim/remote/gr/aimhor_bud.gif" width="103" height="45" border="0" alt="Add me to Your Buddy List" /></a>
			<a href="aim:gochat?roomname=bg7nyt+Chat"><img src="http://www.aol.co.uk/aim/remote/gr/aimhor_chat.gif" width="103" height="45" border="0" alt="Join my Chat Room" /></a>
			<a href="mailto:bg7nyt@aim.com"><img src="http://www.aol.co.uk/aim/remote/gr/aimhor_email.gif" width="103" height="45" border="0" alt="Send me an Email" /></a>
			<a href="http://www.aol.co.uk/aim/remote.html"><img src="http://www.aol.co.uk/aim/remote/gr/aimhor_right.gif" width="55" height="45" border="0" alt="Add Remote to Your Page" /></a></nobr>
		</td>
	</tr>
	<tr>
		<td colspan="4" align="center">
			<a href="http://www.aol.co.uk/aim/register/register.html"><font size="2" face="geneva, arial, Helvetica, sans-serif">Download AOL Instant Messenger</font></a>
		</td>
	</tr>
</table>
<!-- End AIM Remote -->	

	</td>
  </tr>
  <tr>
    <td> </td>
  </tr>
</table>
</body>

    </HTML>
  </xsl:template>
<!--
<xsl:template match="/">

</xsl:template>
-->
  
  
  <xsl:template match="chapter/title">
    <center><h1> 
      <xsl:apply-templates/>
    </h1>  
    </center>
    <hr /> 
  </xsl:template>

	<xsl:template match="article/bookinfo/title">
		<h1>
		  <xsl:apply-templates/>  <br />
		</h1>
	</xsl:template>
	<xsl:template match="article/bookinfo/author">
		<address>
		  <xsl:apply-templates select="firstname" />  <br />
		  <xsl:apply-templates select="surname" /> <br />
		  <xsl:apply-templates select="affiliation/address/email" /> <br />
		</address>
	</xsl:template>
	<xsl:template match="article/bookinfo/copyright">
		<address>
		  <xsl:apply-templates/>  <br />	  
		</address>
	</xsl:template>	
	<xsl:template match="article/bookinfo/abstract">
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
  
<!--
  	<xsl:apply-templates select="title"/><br />
<xsl:for-each select="setp"></xsl:for-each> 
-->
</xsl:stylesheet>