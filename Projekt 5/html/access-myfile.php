<?php
$my_file = simplexml_load_file('xml/student2.xml');
echo (string)($my_file->fakulta[0]->student->prijmeni);
