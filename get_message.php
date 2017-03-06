<?php
/* Database connection */
$con = mysqli_connect('localhost', 'root', 'imax', 'chat-box') or die("connection Error.");

$id = $_POST['id'];

$sub_query = "SELECT `messages`.`messages`, `users`.`name` FROM `messages`  LEFT JOIN `users` ON `messages`.`user_id` = `users`.`id` WHERE `msg_id` = '".$id."' " ;

$sub_sql = mysqli_query($con, $sub_query);
	
	if (mysqli_num_rows($sub_sql) > 0) {
    
	    while($row = mysqli_fetch_assoc($sub_sql)) {
	    	
	    	echo json_encode($row);
	    }
	}
?>
