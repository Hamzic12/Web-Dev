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
        h1
        {
                text-align: center;
                margin-bottom: 80px;
            }
        img 
        {
            display: block;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 24%;
        }
        .panel
        {
            background-color: #f5f5f5;
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
        <h1 align="center">Recipe book</h1>
        <img src="img/cookbook.png"/>
    </body>
</html>