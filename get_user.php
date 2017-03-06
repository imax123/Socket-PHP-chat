<?php 

/* Database connection */
$con = mysqli_connect('localhost', 'root', 'imax', 'chat-box') or die("connection Error.");

$id = $_POST['id'];

$query = "SELECT name FROM users WHERE id = '".$id."'" ;

$sql = mysqli_query($con, $query);

if (mysqli_num_rows($sql) > 0) {
    
    while($row = mysqli_fetch_assoc($sql)) {
    	$name = $row['name'];
    	echo $name ;
    }
}
?>