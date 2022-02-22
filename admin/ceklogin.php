<?php
session_start();
include "../config/config.php";

$username = $_POST['username'];
$password = md5($_POST['password']);

$user = mysqli_query($koneksi, "SELECT * FROM `user` WHERE `username` = '$username' AND `password` = '$password'");
$data = mysqli_fetch_array($user);
$jml = mysqli_num_rows($user);

if ($jml > 0) {
    $_SESSION['username'] = $data['username'];
    $_SESSION['password'] = $data['password'];

    header('location: index.php');
} else {
    echo "<p align='center'>Login gagal</p>";
    echo "<meta http-equiv='refresh' content='2;url=login.php'>";
}
?>