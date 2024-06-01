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
        <a href="home.php">Beranda</a> &gt;&gt; Jadwal Pengiriman
    </div>

    <div class="content-wrapper">
        <h1>JADWAL PENGIRIMAN</h1>
        <div class="container-wrapper">
            <?php
            // Image path stored in the database
            $imagePath = 'assets/images/Jadwal.png'; // Example image path, change accordingly

            // Display the schedule image
            echo "<div class='schedule-container'>
                    <img src='$imagePath' alt='Jadwal Pengiriman'>
                </div>";
            ?>
        </div>
    </div>
</body>

</html>
