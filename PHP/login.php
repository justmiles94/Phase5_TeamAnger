<?php
/*
CONNECT-DB.PHP
Allows PHP to connect to your database
*/

include('connectStarTrekDB.php');

<<<<<<< HEAD

$sql = "select * from Users where username='".$username."' and password='".$password."'";
=======
$username = $_POST['username'];
$password = $_POST['password'];

$sql = "select * from users where username='".$username."' and password='".$password."'";
>>>>>>> justmiles94/master
if ($connection->query($sql)->num_rows > 0) {
    echo "true";
} else {
    echo "false";
}
?>