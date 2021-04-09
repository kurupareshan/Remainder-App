<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "myIosApp");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Attempt select query execution
$sql = "SELECT * FROM ios";
if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
       $result = mysqli_query($link, "SELECT * from ios ORDER BY id DESC LIMIT 1");
       $json_array = array();
       while ($row = mysqli_fetch_assoc($result)) {
           $json_array[] = $row;
       }
       print(json_encode($json_array));
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>