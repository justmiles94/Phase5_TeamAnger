<?php

include('connectDB.php');

$all = $_POST['all'];
$actor = $_POST['actor'];
$character = $_POST['character'];
$quote = $_POST['quote'];
$position = $_POST['position'];

if($all == "true"){
  $sql = "select * from Library order by name asc";

  if ($connection->query($sql) === TRUE) {
      echo "Record updated successfully";
  } else {
      echo "Error updating record: " . $conn->error;
  }
}else{

$sql = "select * from Library where ''=''";

if(!empty($actor)){
    $sql = $sql." and 'actor' like ".$actor;
  }

if(!empty($character)){
    $sql = $sql." and 'character' like ".$character;
  }

if(!empty($position)){
    $sql = $sql." and 'position' like ".$position;
  }

if(!empty($quote)){
    $sql = $sql." and 'quote' like ".$quote;
  }

$sql = $sql." ordered by actor asc";

if ($connection->query($sql) === TRUE) {
      echo "Record updated successfully";
  } else {
      echo "Error updating record: " . $conn->error;
  }
  
}
?>