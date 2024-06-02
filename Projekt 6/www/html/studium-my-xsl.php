<?php
$xml = new DOMDocument;
$xml->load('../xml/studium.xml');

$xsl = new DOMDocument;
// $xsl->load('../xml/studium1.xsl');
// $xsl->load('../xml/studium2.xsl');
 $xsl->load('../xml/studium3.xsl');
// $xsl->load('../xml/studium4.xsl');
// $xsl->load('../xml/studium5.xsl');

$xslt = new XSLTProcessor();
$xslt->importStylesheet($xsl);

echo $xslt->transformToXml($xml);