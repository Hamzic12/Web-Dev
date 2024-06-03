<html>
    <body>
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
        <form action="add-recipe-form.php" method="post">
            <label>Name</label>
            <input type="text" name="name"/>
            
            <label>Mealtype</label>
            <input type="text" name="mealtype"/>

            <label>Amount</label>
            <input type="text" name="amount"/>
            
            <label>Ingredients</label>
            <input type="text" name="ingredient"/>
            
            <label>Duration</label>
            <input type="text" name="duration"/>
            
            <label>Instructions</label>
            <input type="text" name="instruction"/>

            <label>Youtube video</label>
            <input type="text" name="tutorial"/>

            <input type="submit" name="add"/>
        </form>
    </body>
</html>


