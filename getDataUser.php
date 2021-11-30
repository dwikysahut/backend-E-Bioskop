<?php
require "conn.php";
$email = $_GET['email'];
// $email="dwikysahut@gmail.com";

if($conn){
	$query = "SELECT * FROM `users_table` WHERE `email`='" . $email . "'";
	$query_result=mysqli_query($conn,$query);
	$json = array();
	
	while($row = mysqli_fetch_assoc($query_result)){
		$json[] = $row;
	}
	
	echo json_encode($json);
	

}else{
	echo "Connection Error";

} 
mysqli_close($conn);


?>