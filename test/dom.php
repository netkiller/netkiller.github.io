<?php
$stylesheet = "../docbook-book.xsl";
$xmldoc = domxml_open_file("../book.xml");
$xsldoc = domxml_xslt_stylesheet_file($stylesheet);
$result =  $xsldoc->process($xmldoc);
echo $xsldoc->result_dump_file($result, "filename");     
?> 