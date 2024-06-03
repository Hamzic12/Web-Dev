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

        .panel {
        background-color: #f8d7da;
        padding: 5px;
        border-bottom: 2px solid black;
        }

        body {
            background-color: #fff3e6
        }
        .form-control{
            border: 1px solid black;
        }
        .btn {
            display: block;
            margin: 0 auto;
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
        <?php
            if(isset($_REQUEST['add']))
            {
                $xml = new DOMDocument;
                $xml -> load("../xml/recipes.xml");
                
                $rootTag = $xml->getElementsByTagName("recipes")->item(0);
                $recipeTag = $xml->createElement("recipe");
                $ingredientsTag = $xml->createElement("ingredients");
                $instructionsTag = $xml->createElement("instructions");

                $nameTag = $xml->createElement("name", $_REQUEST['name']);
                $mealtypeTag = $xml->createElement("mealtype", $_REQUEST['mealtype']);
                $amountTag = $xml->createElement("amount", $_REQUEST['amount']);
                $ingredientTag = $xml->createElement("ingredient", $_REQUEST['ingredient']);
                $durationTag = $xml->createElement("duration", $_REQUEST['duration']);
                $instructionTag = $xml->createElement("instruction", $_REQUEST['instruction']);
                $tutorialTag = $xml->createElement("tutorial", $_REQUEST['tutorial']);

                $durationTag->setAttribute("unit", "minutes");

                $ingredientsTag -> appendChild($ingredientTag);
                $instructionsTag -> appendChild($instructionTag);

                $recipeTag -> appendChild($nameTag);
                $recipeTag -> appendChild($mealtypeTag);
                $recipeTag -> appendChild($amountTag);
                $recipeTag -> appendChild($ingredientsTag);
                $recipeTag -> appendChild($durationTag);
                $recipeTag -> appendChild($instructionsTag);

                $rootTag -> appendChild($recipeTag);
                
                $xml -> save("../xml/recipes.xml");
            }
        ?>
        <div class="container d-flex justify-content-center">
        <form action="add-recipe-form.php" method="post">  
            <label>Name</label>
            <input type="text" name="name" class="form-control"/>
            
            <label>Mealtype</label>
            <input type="text" name="mealtype" class="form-control"/>
  
  
            <label>Amount</label>
            <input type="text" name="amount" class="form-control"/>
    
      
            <label>Ingredients</label>
            <input type="text" name="ingredient" class="form-control"/>
     
            <label>Duration</label>
            <input type="text" name="duration" class="form-control"/>
  
            <label>Instructions</label>
            <input type="text" name="instruction" class="form-control"/>

            <div class="mb-3">
                <label>Youtube video</label>
                <input type="text" name="tutorial" class="form-control"/>
            </div> 
        <button name="add" class="btn btn-primary">Add</button>
    </form>


    </body>
</html>


