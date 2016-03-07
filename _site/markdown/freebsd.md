# 工具包安装

    pkg_add -r vim
    pkg_add -r git
    pkg_add -r libxml2 libxslt
    pkg_add -r docbook-xsl

# 测试

## book.xml
    
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE subject SYSTEM "/usr/local/share/xml/docbook/5.0/dtd/docbook.dtd">
    <book>
    	<bookinfo>
    		<title>An Example Book</title>
    
    		<author>
    			<firstname>Your first name</firstname>
    			<surname>Your surname</surname>
    			<affiliation>
    				<address>
    					<email>foo@example.com</email>
    				</address>
    			</affiliation>
    		</author>
    
    		<copyright>
    			<year>2000</year>
    			<holder>Copyright string here</holder>
    		</copyright>
    
    		<abstract>
    			<para>If your book has an abstract then it should go here.</para>
    		</abstract>
    	</bookinfo>
    
    	<preface>
    		<title>Preface</title>
    
    		<para>Your book may have a preface, in which case it should be placed
    			here.</para>
    	</preface>
    
    	<chapter>
    		<title>My first chapter</title>
    
    		<para>This is the first chapter in my book.</para>
    
    		<section>
    			<title>My first section</title>
    
    			<para>This is the first section in my book.</para>
    		</section>
    
    	</chapter>
    </book>

## 生成 html 文档

    % xsltproc /usr/local/share/xsl/docbook/xhtml/docbook.xsl book.xml > book.html
    Note: namesp. cut : stripped namespace before processing           An Example Book
    Note: namesp. cut : processing stripped document                   An Example Book

