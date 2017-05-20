<?php


// Create connection
$con = mysqli_connect('localhost', 'root', '','kungfu');

	if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
  
  $SID= $_POST['SID'];
$levels= $_POST['levels'];


	$sql1 ='INSERT INTO class  VALUES ("'.$SID.'","'.$levels.'")';
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