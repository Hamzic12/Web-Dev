<?php
$xml = file_get_contents('../xml/recipes.xml');

header('Content-Type: application/xml');
echo $xml;
