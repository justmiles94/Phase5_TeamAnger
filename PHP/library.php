<?php
/*
CONNECT-DB.PHP
Allows PHP to connect to your database
*/

include('connectDB.php');

$sql = "select * from Library order by name asc";

if ($connection->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $conn->error;
}
?>