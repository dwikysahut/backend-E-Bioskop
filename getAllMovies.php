<?php
include "conn.php";
	
	$query = mysqli_query($conn,"SELECT * FROM movie ORDER BY title ASC");
	
	$json = array();
	
	while($row = mysqli_fetch_assoc($query)){
		$json[] = $row;
	}
	
	echo json_encode($json);
	
	mysqli_close($conn);
?>