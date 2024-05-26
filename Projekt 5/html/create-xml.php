<?php
$xml_file = new SimpleXMLELEMENT('<Univerzita/>');

$Univerzita = $xml_file->addChild('fakulta');
$Univerzita -> addAttribute('nazev', 'PrF');

$student = $Univerzita->addChild('student');
$student -> addChild('jmeno','Karel');
$student -> addChild('prijmeni','Barel');
$student -> addChild('stId', 'st14523');


header('Content-Type: application/xml');
echo $xml_file->asXML();
