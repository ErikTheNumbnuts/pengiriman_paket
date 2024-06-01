<?php
$conn = require "config/koneksi_db.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pengirimn Paket Irit</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/index.css">
</head>

<body>
    <?php include("part/topbar.php") ?>
    
    <div class="breadcrumb-wrapper">
        <a href="home.php">Beranda</a> &gt;&gt; Lokasi Penerimaan
    </div>

    <div class="content-wrapper">
        <h1>LOKASI PENERIMAAN</h1>
        <div class="container-wrapper">
            <?php
            $branchQuery = "SELECT * FROM `penerimaan`"; // Adjust the table name and columns as necessary
            $result = $conn->query($branchQuery);

            if ($result->num_rows > 0) {
                // Loop through each branch and display information
                while ($row = $result->fetch_assoc()) {
                    // Debugging: Print out the row to see the available keys

                    // Ensure keys exist before accessing them
                    $wilayah_agen = isset($row["wilayah_agen"]) ? $row["wilayah_agen"] : 'N/A';
                    $nama_agen = isset($row["nama_agen"]) ? $row["nama_agen"] : 'N/A';
                    $lokasi = isset($row["lokasi"]) ? $row["lokasi"] : 'N/A';
                    $alamat_jalan = isset($row["alamat_jalan"]) ? $row["alamat_jalan"] : 'N/A';
                    $kontak = isset($row["kontak"]) ? $row["kontak"] : 'N/A';
    
                    // Display branch information in a rectangle container
                    echo "<div class='branch-container'>
                            <h2>$wilayah_agen</h2>
                            <p><strong>$nama_agen</strong></p>
                            <p>$lokasi</p>
                            <p>$alamat_jalan</p>
                            <p>$kontak</p>
                        </div>";
                }
            } else {
                echo "No branches found";
            }

            $conn->close();
            ?>
        </div>
    </div>
</body>

</html>
