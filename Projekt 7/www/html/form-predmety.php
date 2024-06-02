<!DOCTYPE html>
<html lang="cs">

<?php require __DIR__ . '/../include/predmety.php' ?>

<head>
    <meta charset="UTF-8">
</head>

<body>
    <?php $kod = $_REQUEST['kod']?>
    <?php $choice = $_REQUEST['choice']?>
    <form method="post">
        <input type="text" name="kod">
        <select name="choice">
            <option  value="MA1">MA1</option>
            <option  value="PGL1">PGL1</option>
            <option  value="UDI">UDI</option>
            <option  value="NIE">NIE</option>
        </select>
        <input type="submit">
    </form>

    <?= tabulkaPredmetu($choice) ?>

</body>

</html>