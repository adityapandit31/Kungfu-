<?php


// Create connection
$con = mysqli_connect('localhost', 'root', '','kungfu');

	if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

   $SID= $_POST['SID'];
	$MF= $_POST['MF'];
	$TF= $_POST['TF'];
	$SF= $_POST['SF'];
	$DOB= $_POST['DOB'];
	$total=$MF +$TF+$SF;

	$sql1 ='INSERT INTO fees  VALUES ("'.$SID.'","'.$MF.'","'.$TF.'","'.$SF.'","'.$total.'","'.$DOB.'")';
	if(!mysqli_query($con, $sql1))
	{
		echo'Not inserted ' .mysqli_error($con);
	
	}
	else
	{
		echo'Inserted';
	}
	
   header("refresh:0.02; url=index.html");
	?>
