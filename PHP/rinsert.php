<?php


// Create connection
$con = mysqli_connect('localhost', 'root', '','kungfu');

	if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }


	$SID= $_POST['SID'];
	$rank= $_POST['Rank'];
	
	

	

	$sql ='INSERT INTO rank VALUES ("'.$SID.'","'.$rank.'")';

	
	if(!mysqli_query($con, $sql))
	{
		echo'Not inserted ' .mysqli_error($con);
	
	}
	else
	{
		echo'Inserted';
	}
	header("refresh:0.02; url=index.html");


?>