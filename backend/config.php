<?php
$servername = "localhost";
$username = "root"; // username
$password = ""; // password
$dbname = "test"; // database name

// Connection establishment
$conn = new mysqli($servername, $username, $password, $dbname);

// checking
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
