<?php


// Create connection
$con = mysqli_connect('localhost', 'root', '','kungfu');

	if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }


	$fname= $_POST['fname'];
	$lname= $_POST['lname'];
	$DOB=$_POST['DOB'];
	$Date= $_POST['Date'];	
	$mobnum= $_POST['mobileno'];
	$emailid= $_POST['emailid'];
	$address= $_POST['address'];
	

	

	$sql ='INSERT INTO student  VALUES (null,"'.$fname.'","'.$lname.'","'.$DOB.'","'.$Date.'","'.$mobnum.'","'.$emailid.'","'.$address.'")';

	
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