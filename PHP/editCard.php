<?php
/*
CONNECT-DB.PHP
Allows PHP to connect to your database
*/

include('connectDB.php');

$name = $_POST['name'];
$firstName = $_POST['firstname'];

$sql = "UPDATE Library SET lastname='Doe' WHERE id=2";

if ($connection->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $conn->error;
}
?>