<?php


// Create connection
$con = mysqli_connect('localhost', 'root', '','kungfu');

	if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  $pname= $_POST['pname'];
	$pemail= $_POST['pemail'];
	$pmobno= $_POST['pmobno'];
	$SID= $_POST['SID'];

	$sql1 ='INSERT INTO parent  VALUES (null,"'.$pname.'","'.$pmobno.'","'.$pemail.'","'.$SID.'")';
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