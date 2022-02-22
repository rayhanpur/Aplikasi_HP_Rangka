<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>APeT - Admin login</title>
    <link href="../library/gaya.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="../library/img/hp.png">
</head>
<body>
    <div id="login">
        <h3>Login Admin</h3>
        <form action="ceklogin.php" method="post">
            <p>
                <div class="form-input">                        
                    <input type="hidden" name="username" value="admin">
                    <input type="password" name="password" id="password" required>
                    <label for="password">Password</label>
                </div>
            </p>
            <p>
                <button type="submit">Masuk</button>
            </p>
        </form>
    </div>
</body>
</html>