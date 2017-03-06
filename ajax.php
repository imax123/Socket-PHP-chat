<?php

/* Database connection */
$con = mysqli_connect('localhost', 'root', 'imax', 'chat-box') or die("connection Error.");

$name = $_POST['name'];

$query = "INSERT INTO users (name) VALUES ('".$name."')" ;

$sql = mysqli_query($con, $query);

$last_id = mysqli_insert_id($con);

if($sql)
{
	echo $last_id;
}



?>