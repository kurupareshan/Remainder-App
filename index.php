<?php

/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "myIosApp");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Attempt insert query execution
if(isset ($_POST['year']) || ($_POST['month']) || ($_POST['day']) || ($_POST['hour']) || ($_POST['minute']) || ($_POST['second']) ) {
$sql = "INSERT INTO ios (year, month, day, hour, minute, second) VALUES ('$_POST[year]','$_POST[month]','$_POST[day]','$_POST[hour]','$_POST[minute]','$_POST[second]')";
if(mysqli_query($link, $sql)){
    echo "Records inserted successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}

}
 
// Close connection
mysqli_close($link);

?>