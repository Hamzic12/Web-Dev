<?php
$file = simplexml_load_file('xml/student2.xml');
print_r($file->xpath('/Univerzita/fakulta[@nazev="prirodovedecka"]/student'));