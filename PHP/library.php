<?php

include('connectStarTrekDB.php');

$all = $_POST['all'];
$actor = $_POST['actor'];
$character = $_POST['character'];
$quote = $_POST['quote'];
$position = $_POST['position'];

if($all == "true"){

  $sql = "select * from library order by name asc";

  if ($connection->query($sql) === TRUE) {
      echo "Record updated successfully";
  } else {
      echo "Error updating record: " . $conn->error;
  }
}else{

$sql = "select * from library where ''=''";

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
	  //create html strings with the returned card numbers
	while ($row = mysql_fetch_array($connection)) {
		if($row[0] < 10){
			echo "<img src='../Cards/A00".$row[0].".jpg'>";
		}
		if($row[0] < 100){
			echo "<img src='../Cards/A0".$row[0].".jpg'>";
		}
		if($row[0] > 10 && $row[0] > 99 && $row[0] < 1000){
			echo "<img src='../Cards/A".$row[0].".jpg'>";
		}
	}
  } else {
      echo "Error updating record: " . $conn->error;
  }
  
}
?>