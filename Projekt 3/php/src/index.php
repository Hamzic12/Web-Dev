<!DOCTYPE html>
<html>

<body>
    <a href='xml/cdcatalog.xml'>CD Catalog</a>
    <div>
        <a href='xml/student2.xml'> Prirodovedecka fakulta </a>
    </div>
    <?php
    // XML
    $xml = new DOMDocument;
    $xml->load('xml/student2.xml');
    // XSL
    $xsl = new DOMDocument;
    $xsl->load('xml/student2.xsl');
    // transformer
    $xslt = new XSLTProcessor();
    $xslt->importStylesheet($xsl);
    $transformovany_xml = $xslt->transformToXml($xml);
    // output
    echo $transformovany_xml;
    ?>

    <?php
    // Cesta k adresáři
    $directory = './xml/';

    // Najdi všechny XML soubory v adresáři
    $xmlFiles = glob($directory . '*.xml');

    if ($xmlFiles) {
        echo '<h2>Seznam XML souborů:</h2>';
        echo '<ul>';
        foreach ($xmlFiles as $file) {
            echo '<li>' . basename($file) . '</li>';
        }
        echo '</ul>';}
    ?>
</body>

</html>