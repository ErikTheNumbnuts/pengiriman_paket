<?php

$servername = "localhost";
$database = "PACKAGE";
$username = "root";
$password = "123456";
$port = "3307";

// Create connection

$conn = mysqli_connect($servername, $username, $password, $database, $port);

// Check connection

if (!$conn) {

    die("Connection failed: " . mysqli_connect_error());
}

return $conn;


