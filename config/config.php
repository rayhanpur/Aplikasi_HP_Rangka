<?php
$host = "localhost";
$user = "root";
$pass = "komputertrett";
$db = "aplikasi_pinjam_hp";

$koneksi = mysqli_connect($host, $user, $pass, $db);

if (mysqli_connect_errno()) {
    echo "Koneksi gagal: " . mysqli_connect_error();
}
?>