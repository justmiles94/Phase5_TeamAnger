<?php
/*
CONNECT-DB.PHP
Allows PHP to connect to your database
*/

include('connectUserDB.php');

$sql = "select * from Users where username='".$username."' and password='".$password."'";
if ($connection->query($sql)->num_rows > 0) {
    echo "true";
} else {
    echo "false";
}
?>