<?php
$db_conn = mysqli_connect("localhost", "root", "", "events-reg");
// Check connection
if($db_conn === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

?>
