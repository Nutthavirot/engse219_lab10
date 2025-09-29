<?php
$host = "localhost";   // MySQL server
$user = "root";        // default user in XAMPP
$pass = "";            // default password is empty
$db   = "lab10"; // the database you created

// Create connection
$conn = new mysqli($host, $user, $pass, $db);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
