
<?php
$filenameBase = '../xml/recipes';

$xmlFile = "$filenameBase.xml";
$xsdFile = "$filenameBase.xsd";
$xslFile = "$filenameBase.xsl";


try {
    $xml = new DOMDocument;
    $xml->load($xmlFile) or die;
    $xml->schemaValidate($xsdFile) or die;

    $xsl = new DOMDocument;
    $xsl->load($xslFile) or die;

    $xslt = new XSLTProcessor();
    $xslt->importStylesheet($xsl) or die;
    (false!==$xmlTrans = $xslt->transformToXml($xml)) or die;
} catch (\Throwable) {
    die;
}

echo $xmlTrans;ˇ
?>

