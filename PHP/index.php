<?php
/*
CONNECT-DB.PHP
Allows PHP to connect to your database
*/

$server = 'localhost';
$user = 'root';
$pass = '';

// Connect to Database
$connection = new mysqli($server, $user, $pass);

$lines = file('startrek.sql');

$templine = '';
// Loop through each line
foreach ($lines as $line)
{
// Skip it if it's a comment
if (substr($line, 0, 2) == '--' || $line == '')
    continue;

// Add this line to the current segment
$templine = $templine.$line;
// If it has a semicolon at the end, it's the end of the query
if (substr(trim($line), -1, 1) == ';')
{
    // Perform the query
    $connection->query($templine) or print('Error performing query \'<strong>' . $templine . '\': ' . mysql_error() . '<br /><br />');
    // Reset temp variable to empty
    $templine = '';
}
}
 echo "Tables imported successfully";

include "../HTML/StartMenu.html";
?>