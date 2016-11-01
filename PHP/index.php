<?php
/*
CONNECT-DB.PHP
Allows PHP to connect to your database
*/
$sqlfile = fopen('startrek.sql', 'r');
if ($connection->query($sqlfile) === TRUE) {
    echo "Data Ready";
} else {
    echo "Error preping database";
}
include "../HTML/StartMenu.html";
?>