<?php
session_start();
ob_start();

include "../config/config.php";
if (empty($_SESSION['username']) or empty($_SESSION['password'])) {
    echo "<p align='center'>Anda harus login terlebih dahulu</p>";
    echo "<meta http-equiv='refresh' content='2;url=login.php'>";
} else {
    define('INDEX', true);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>APeT - Admin</title>
    <link href="../library/gaya.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="../library/img/hp.png">
</head>

<body>
    <div class="container" id="atas">
        <h1>Aplikasi Peminjaman HP - ADMIN</h1>
        <nav>
            <a href="logout.php"><img src="../library/img/logout_white_24dp.svg" alt="Logout">Logout</a>
        </nav>
    </div>
    <div class="container" id="isi">
        <div id="main">
            <ul class="menu">
                <li><a href="?hal=data_pinjam">Data Peminjaman</a></li>
                <li><a href="?hal=data_santri">Data Santri</a></li>
            </ul>
        </div>
        <div id="render-list">
            <?php include "konten.php"; ?>
        </div>
    </div>
    <a href="#table-head" id="tombol-atas"><img src="../library/img/keyboard_arrow_up_white_24dp.svg" alt="Ke atas"></a>
    <footer>
        Copyright © Purnomo.inc, All Right Reserved
    </footer>
</body>

</html>
<?php
}
?>