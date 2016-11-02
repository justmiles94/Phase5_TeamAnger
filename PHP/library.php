<?php

include('connectStarTrekDB.php');

$all = $_POST['all'];
$actor = $_POST['actor'];
$character = $_POST['character'];
$quote = $_POST['quote'];
$position = $_POST['position'];

if($all == "true"){
<<<<<<< HEAD
  $sql = "select * from Library order by name asc";
=======
  $sql = "select * from library order by name asc";
>>>>>>> justmiles94/master

  if ($connection->query($sql) === TRUE) {
      echo "Record updated successfully";
  } else {
      echo "Error updating record: " . $conn->error;
  }
}else{

<<<<<<< HEAD
$sql = "select * from Library where ''=''";
=======
$sql = "select * from library where ''=''";
>>>>>>> justmiles94/master

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