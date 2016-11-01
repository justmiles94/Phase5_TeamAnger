<?php

include('connectStarTrekDB.php');

$cardnum = $_POST['cardnum'];
$actor = $_POST['actor'];
$character = $_POST['character'];
$quote = $_POST['quote'];
$position = $_POST['position'];

if(!empty($cardnum)){//no card number is a new card
  //update statement
  $sql = "update library set ;

  if(!empty($actor)){
      $sql = $sql." 'actor'=".$actor;
    }

  if(!empty($character)){
      $sql = $sql.", 'character'=".$character;
    }

  if(!empty($position)){
      $sql = $sql.", 'position'=".$position;
    }

  if(!empty($quote)){
      $sql = $sql.", 'quote'=".$quote;
    }
  $sql = $sql." where ''='' "
  if(!empty($actor)){
      $sql = $sql."and 'actor' like ".$actor;
    }

  if(!empty($character)){
      $sql = $sql."and 'character'=".$character;
    }

  if(!empty($position)){
      $sql = $sql."and 'position' like ".$position;
    }

  if(!empty($quote)){
      $sql = $sql."and 'quote' like ".$quote;
    }

  if ($connection->query($sql) === TRUE) {
        echo "Record updated successfully";
    } else {
        echo "Error updating record: " . $conn->error;
    }
}else{//else is a card edit
  //insert statement
  $sql = "insert into users values (".$actor.", ".$character.", ".$quote.", ".$position.")";
  if ($connection->query($sql) === TRUE) {
        echo "Record updated successfully";
    } else {
        echo "Error updating record: " . $conn->error;
    }
}  
}
?>