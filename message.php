<?php

/* Database connection */
$con = mysqli_connect('localhost', 'root', 'imax', 'chat-box') or die("connection Error.");

$msg = $_POST['msg'];
$id = $_POST['id'];

$query = "INSERT INTO messages (user_id, messages) VALUES ('".$id."', '".$msg."')" ;

$sql = mysqli_query($con, $query);

$last_id = mysqli_insert_id($con);


if($sql)
{
	echo $last_id ;
}
else
{
	echo "Message Error Occured" ;
}



?>