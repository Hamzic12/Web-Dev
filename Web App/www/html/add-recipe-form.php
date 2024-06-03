<html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        h1{
            text-align: center;
        }
        a
        {
            text-decoration: none;

        }
        button
        {
            margin-top:5px;
        }

        .panel {
        background-color: #f8d7da;
        padding: 5px;
        border-bottom: 2px solid black;
        }

        body {
            background-color: #fff3e6
        }
        .form {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: lightgrey;
            padding: 0px 20px 0px 20px;
        }

        .form-control {
            margin-bottom: 10px;
        }
        .btn {
            display: block;
            margin: 15px auto;
        }
        label
        {
            font-weight: bold;
        }
        .flex {
            display: flex;
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
                $durationTag = $xml->createElement("duration", $_REQUEST['duration']);
                $tutorialTag = $xml->createElement("tutorial", $_REQUEST['tutorial']);

                $durationTag->setAttribute("unit", "minutes");

                $ingredientTags = $_REQUEST['ingredient'] ?? []; // Get all ingredients as an array
                foreach ($ingredientTags as $ingredient) {
                    $ingredientTag = $xml->createElement("ingredient", $ingredient);
                    $ingredientsTag->appendChild($ingredientTag);
                }
                $instructionTags = $_REQUEST['instruction'] ?? [];
                foreach ($instructionTags as $instruction) {
                    $instructionTag = $xml->createElement("instruction", $instruction);
                    $instructionsTag->appendChild($instructionTag);
                }

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
        <h1> Add your recipe</h1>
        <div class="container d-flex justify-content-center">
            <form method="post">  
                <label>Name</label>
                <input type="text" name="name" class="form-control" required placeholder="..."/>
                
                <label>Meal type</label>
                <input type="text" name="mealtype" class="form-control" required placeholder="..."/>
    
    
                <label>Amount</label>
                <input type="text" name="amount" class="form-control" required placeholder="..."/>
        
        
                <label>Ingredient</label>
                <div class="moreIngredient">
                    <input type="text" name="ingredient[]" class="form-control" required placeholder="..."/>     
                </div>
                
                <label>Duration</label>
                <input type="text" name="duration" class="form-control" required pattern="[0-9]+" placeholder="In minutes"/>
    
                <label>Instruction</label>
                
                <div class="moreInstruction">
                    <input type="text" name="instruction[]" class="form-control" required placeholder="..."/>
                </div>

                <div class="mb-3">
                    <label>Youtube video</label>
                    <input type="text" name="tutorial" class="form-control" required placeholder="..."/>
                </div> 
            <button name="add" class="btn btn-primary" >Add</button>
            </form>
            <div>
                <button class="addIngredient btn">Add Ingredient</button>
            </div>
             <div>
                <button class="addInstruction btn">Add instruction</button>
            </div>
        </div>

        <script src="JS/add-remove-ingredient.js"></script>
        <script src="JS/add-remove-instruction.js"></script>


    </body>
</html>


