<?php
include "config/config.php";
date_default_timezone_set("Asia/Jakarta");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
    $tanggal = new DateTime();
    $tanggal_sekarang = $tanggal->format('d-m-Y');

    header("Content-type: application/vnd-ms-excel");
	header("Content-Disposition: attachment; filename=Data Pinjam HP " . $tanggal_sekarang . ".xls");
?>
<h1>Data Peminjaman HP <?= $tanggal_sekarang ?></h1>
<table>
        <tr class="lengket">
            <th>No</th>
            <th>Nama</th>
            <th>Kelas</th>
            <th>HP</th>
            <th>Tanggal</th>
            <th>Waktu Pinjam</th>
            <th>Batas Pengembalian</th>
            <th>Waktu Kembali</th>
            <th>Status</th>
        </tr>
        <?php
            $query = mysqli_query($koneksi, "SELECT * FROM data_peminjaman_hp ORDER BY id DESC");
            $no = 0;
            while ($data = mysqli_fetch_array($query)) {
                $no++;
                $waktu_pinjam = new DateTime($data['jam_peminjaman']);
                $jam_pinjam = $waktu_pinjam->format("H:i:s");

                $tanggal = new DateTime($data['jam_peminjaman']);
                $tanggal_pinjam = $tanggal->format('d-m-Y');

                $waktu_batas = new DateTime($data['batas_peminjaman']);
                $jam_batas = $waktu_batas->format("H:i:s");

                if (empty($data['waktu_pengembalian'])) {
                    $jam_kembali = "";
                } else {
                    $waktu_kembali = new DateTime($data['waktu_pengembalian']);
                    $jam_kembali = $waktu_kembali->format("H:i:s");
                }
        ?>
        <tr class>
            <form action="?act=kembali" method="post">    
                <td><?= $no; ?><input type="hidden" name="id_santri" value="<?= $data['id'] ?>"></td>
                <td><?= $data['nama_santri'] ?></td>
                <td><?= $data['kelas_santri'] ?></td>
                <td><?= $data['hp_dipakai'] ?></td>
                <td><?= $tanggal_pinjam ?></td>
                <td><?= $jam_pinjam ?></td>
                <td><?= $jam_batas ?><input type="hidden" name="batas_waktu" value="<?= $data['batas_peminjaman'] ?>"></td>
                <td><?= $jam_kembali ?></td>
                <td><?= $data['status_peminjaman'] ?></td>
            </form>
        </tr>
        <?php            
            }
        ?>
    </table>
    <?php
        mysqli_query($koneksi, "TRUNCATE `aplikasi_pinjam_hp`.`data_peminjaman_hp`");
    ?>
</body>
</html>