<?php
include "config/config.php";
date_default_timezone_set("Asia/Jakarta");

if ($_POST) {
    if ($_GET['act'] == "pinjam") {
        if ($_POST) {
            $date = new DateTime();
            $formatted_date = $date->format('Y-m-d H:i:s');
            $current_date = strtotime($formatted_date);
            
            $batas = $current_date + (60*15);
            $formatted_batas = date("Y-m-d H:i:s", $batas);
        
            $insert_data = mysqli_query($koneksi, "INSERT INTO `data_peminjaman_hp` (`id`, `nama_santri`, `kelas_santri`, `hp_dipakai`, `jam_peminjaman`, `batas_peminjaman`, `jam_pengembalian`, `status_peminjaman`) VALUES (NULL, '$_POST[nama_santri]', '$_POST[kelas_santri]', '$_POST[hp_dipakai]', '$formatted_date', '$formatted_batas', NULL, 'Sedang Meminjam')");
        }
    } else {
        if ($_POST) {
            $selesai = new DateTime();
            $formatted_selesai = $selesai->format('Y-m-d H:i:s');
            if ($_POST['tombol'] == 'Selesai') {           
                if ($_POST['batas_waktu'] < $formatted_selesai) {
                    $status_peminjaman = "TERLAMBAT";
                } else {
                    $status_peminjaman = "TEPAT WAKTU";
                }
            
                $update_data = mysqli_query($koneksi, "UPDATE `data_peminjaman_hp` SET `jam_pengembalian` = '$formatted_selesai', `status_peminjaman` = '$status_peminjaman' WHERE `data_peminjaman_hp`.`id` = '$_POST[id_santri]'");
            } else {
                $update_data = mysqli_query($koneksi, "UPDATE `data_peminjaman_hp` SET `jam_pengembalian` = '$formatted_selesai', `status_peminjaman` = 'Batal Telpon' WHERE `data_peminjaman_hp`.`id` = '$_POST[id_santri]'");
            }
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aplikasi Peminjaman HP</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="library/gaya.css?v=<?= time(); ?>" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="library/img/hp.png">
</head>

<body>
    <div class="container" id="atas">
        <h1>Aplikasi Peminjaman HP</h1>
        <nav>
            <ul>
                <li>Admin</li>
                <li>|</li>
                <li><a href="ekspor.php" rel="noopener noreferrer">Download Data</a></li>
            </ul>
        </nav>
    </div>
    <div class="container" id="isi">
        <div id="main">
            <form action="?act=pinjam" method="post">
                <p>
                    <div class="form-input">                        
                        <input type="text" name="nama_santri" id="nama_santri" list="data_santri" required>
                        <label for="nama_santri">Nama</label>

                        <datalist id="data_santri">
                            <?php
                            $data_santri = mysqli_query($koneksi, "SELECT * FROM data_santri ORDER BY kelas_santri DESC");
                            while ($santri = mysqli_fetch_array($data_santri)) {
                                echo "<option value='". $santri['nama_santri'] ."' class='" . $santri['kelas_santri'] . "' hidden>";
                            } ?>
                        </datalist>
                    </div>
                </p>
                <p>
                    <div class="form-input">
                        <input type="text" name="kelas_santri" id="kelas_santri" pattern=".{2,}" required>
                        <label for="kelas_santri">Kelas</label>
                    </div>
                </p>
                <p>
                    <div class="form-input">
                        <select name="hp_dipakai" id="hp_dipakai" required>
                            <option value="" disabled hidden selected></option>
                            <option value="Advan 1">Advan 1</option>
                            <option value="Advan 2">Advan 2</option>
                            <option value="Advan 3">Advan 3</option>
                            <option value="Xiaomi">Xiaomi</option>
                            <option value="Lenovo Vibe">Lenovo Vibe</option>
                            <option value="Redmi 5">Redmi 5</option>
                        </select>
                        <label for="hp_dipakai">Handphone</label>
                    </div>
                </p>
                <p>
                    <button type="submit" id="tombol-pinjam">Pinjam</button>
                </p>
            </form>
        </div>
        <div id="render-list">
            <table>
                <tr id="table-head">
                    <th>No</th>
                    <th>Nama</th>
                    <th>Kelas</th>
                    <th>HP</th>
                    <th>Waktu Pinjam</th>
                    <th>Batas Pengembalian</th>
                    <th>Waktu Kembali</th>
                    <th>Status</th>
                    <th>Aksi</th>
                </tr>
                <?php
            $query = mysqli_query($koneksi, "SELECT * FROM data_peminjaman_hp ORDER BY id DESC");
            $no = 0;
            while ($data = mysqli_fetch_array($query)) {
                $no++;
                $waktu_pinjam = new DateTime($data['jam_peminjaman']);
                $jam_pinjam = $waktu_pinjam->format("H:i");

                $waktu_batas = new DateTime($data['batas_peminjaman']);
                $jam_batas = $waktu_batas->format("H:i");

                if (empty($data['jam_pengembalian'])) {
                    $jam_kembali = "";
                } else {
                    $waktu_kembali = new DateTime($data['jam_pengembalian']);
                    $jam_kembali = $waktu_kembali->format("H:i");
                }
            ?>
                <tr class>
                    <form action="?act=kembali" method="post">
                        <td><?= $no; ?><input type="hidden" name="id_santri" value="<?= $data['id'] ?>"></td>
                        <td><?= $data['nama_santri'] ?></td>
                        <td><?= $data['kelas_santri'] ?></td>
                        <td><?= $data['hp_dipakai'] ?></td>
                        <td><?= $jam_pinjam ?></td>
                        <td><?= $jam_batas ?><input type="hidden" name="batas_waktu"
                                value="<?= $data['batas_peminjaman'] ?>"></td>
                        <td><?= $jam_kembali ?></td>
                        <?php
                    if ($data['status_peminjaman'] == "TEPAT WAKTU") {
                        echo "<td class='hijau'>" . $data['status_peminjaman'] . "</td>";
                    } elseif ($data['status_peminjaman'] == "TERLAMBAT") {
                        echo "<td class='merah'>" . $data['status_peminjaman'] . "</td>";
                    } else {
                        echo "<td>" . $data['status_peminjaman'] . "</td>";
                    }
                ?>
                        <?php if ($data['status_peminjaman'] == 'Sedang Meminjam') {
                    echo "<td class='col_aksi'><input type='submit' name='tombol' value='Selesai'><input type='submit' name='tombol' value='Batal'></td>";
                } else {
                    echo "<td>-</td>";
                } ?>
                    </form>
                </tr>
                <?php            
                }
                ?>
            </table>
        </div>
    </div>
    <a href="#table-head" id="tombol-atas"><img src="library/img/keyboard_arrow_up_white_24dp.svg" alt="Ke atas"></a>
    <footer>
        Copyright © Purnomo.inc, All Right Reserved
    </footer>
    <script src="library/script.js"></script>
</body>

</html>
