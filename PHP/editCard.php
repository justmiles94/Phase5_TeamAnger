<?php
/*
CONNECT-DB.PHP
Allows PHP to connect to your database
*/

include('connectDB');

$sql = "UPDATE MyGuests SET lastname='Doe' WHERE id=2";

if ($connection->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $conn->error;
}t to database ... \n" . mysql_error ());
?>