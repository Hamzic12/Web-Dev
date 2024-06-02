<!DOCTYPE html>
<html lang="cs">

<head>
    <meta charset="UTF-8">
</head>

<body>
    <?php $myName = @$_REQUEST['my-name'] ?>
    <?php $pass = @$_REQUEST['password']?>
    <?php $check = @$_REQUEST['check']?>

    <form action="phpinfo.php" method='get'>
        <div><input type="text" name="my-name" value="<?= $myName ?>"></div>
        <div><input type="password" name="password" value="<?= $pass ?>"></div>
        <div><input type="checkbox" name="check" value="<?= $check ?>"> <label>Remember?</label></div>
        <div><input type="submit"></div>
    </form>

    <pre>
        <?php
        echo 'GET:';
        print_r($_GET);
        echo 'POST:';
        print_r($_POST);
        echo 'REQUEST:';
        print_r($_REQUEST);
        echo 'SERVER:';
        print_r($_SERVER);
        ?>
    </pre>

</body>

</html>