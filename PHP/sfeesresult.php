<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "kungfu");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Attempt select query execution
$sql = "SELECT student.SID, Fname,Lname,total, date_fees   FROM student
  INNER JOIN fees ON  fees.SID=student.SID";
  
if($result = mysqli_query($link, $sql))
{
    if(mysqli_num_rows($result) > 0)
    {
        echo "<table>";
            echo "<tr>";
            
                echo "<th> Student first_name</th>";
                echo "<th> Student last_name</th>";
                echo "<th>total student paid fees </th>";
                echo "<th>Date student paid fees</th>";
               // echo "<th>mobnum</th>";
            
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['Fname'] . "</td>";
                echo "<td>" . $row['Lname'] . "</td>";
                echo "<td>" . $row['total'] . "</td>";
                echo "<td>" . $row['date_fees'] . "</td>";
                
            echo "</tr>";
        }
        echo "</table>";
        // Free result set
        mysqli_free_result($result);
    } else
    {
        echo "No records matching your query were found.";
    }
} else
{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>