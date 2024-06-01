<?php
$conn = require "config/koneksi_db.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pengiriman Paket Irit</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/index.css">
</head>

<body>
    <?php include("part/topbar.php") ?>

    <div class="breadcrumb-wrapper">
        <a href="http://localhost/pengiriman_paket">Beranda</a> &gt;&gt; Lacak Paket
    </div>

    <div class="content-wrapper">
        <h1>LACAK PAKET</h1>

        <div class="search-container-wrapper">
            <form class="search-container" style="margin-bottom: 20px;">
                <input type="text" name="id" placeholder="Masukan ID Paket..." required>
                <button type="submit">Lacak</button>
            </form>

            <?php
            if (isset($_GET['id'])) {
                $packageID = $conn->real_escape_string($_GET['id']);
                $query = "SELECT * FROM daftar WHERE id = '$packageID'";
                $result = $conn->query($query);

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        $Tglditerima = $row["Tglditerima"];
                        $penerima = $row["penerima"];
                        $kontak = $row["kontak"];
                        $berat = $row["berat"];
                        $detail = $row["detail"];
                        $status = $row["status"];

                        echo "
                        <div class='package-container'>
                            <p><strong>Tanggal Diterima:</strong> $Tglditerima</p>
                            <p><strong>Nama Penerima:</strong> $penerima</p>
                            <p><strong>Nomor:</strong> $kontak</p>
                            <p><strong>Berat (KG):</strong> $berat</p>
                            <p><strong>Detail:</strong> $detail</p>
                            <p><strong>Status:</strong> $status</p>
                        </div>";
                    }
                } else {
                    echo "<p>Paket tidak ditemukan.</p>";
                }

                $conn->close();
            }
            ?>
        </div>
    </div>
</body>

</html>
