<?php
$xml = new DOMDocument;
$xml->load('../xml/studium.xml');

$xsl = new DOMDocument;
// $xsl->load('../xml/studium1.xsl');
// $xsl->load('../xml/studium2.xsl');
// $xsl->load('../xml/studium3.xsl');
// $xsl->load('../xml/studium4.xsl');
// $xsl->load('../xml/studium5.xsl');
// $xsl->load('../xml/studium6.xsl');
// $xsl->load('../xml/studium7.xsl');
// $xsl->load('../xml/studium8.xsl');
$xsl->load('../xml/studium9.xsl');

$xslt = new XSLTProcessor();
$xslt->importStylesheet($xsl);

echo $xslt->transformToXml($xml);