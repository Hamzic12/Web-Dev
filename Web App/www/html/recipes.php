<html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        a
        {
            text-decoration: none;

        }
        button
        {
            margin: 5px;
        }
        h1 {
                text-align: center;
                margin-bottom: 20px;
            }
        .panel {
        background-color: #f8d7da;
        padding: 5px;
        border-bottom: 2px solid black;
        }

        body {
            background-color: #fff3e6
        }
    </style>
    </head>

    <body>
        <div class="panel panel-default">
                <a href="index.php">
                    <button>Home</button>
                </a>
                <a href="recipes.php">
                    <button>Recipes</button>
                </a>

                <a href="add-recipe-form.php">
                    <button>Add recipe</button>
                </a>
        </div>
        <h1>Tasty recipes</h1>
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

            echo $xmlTrans;
        ?>


    </body>
</html>
