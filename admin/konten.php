<?php
if (!defined('INDEX')) die("");

$halaman = ["data_pinjam", "data_santri"];

if (isset($_GET['hal'])) $hal = $_GET['hal'];
else $hal = 'data_pinjam';

foreach ($halaman as $h) {
    if ($hal == $h) {
        include "content/$h.php";
        break;
    } else {
        echo "Maaf error";
    }
}
?>