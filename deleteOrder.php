<?php
	include "conn.php";
	
	$id 	= $_POST['id'];
	
	class emp{}
	
	if (empty($id)) { 
		$response = new emp();
		$response->success = 0;
		$response->message = "Error hapus Data"; 
		die(json_encode($response));
	} else {
		$query = mysqli_query($conn,"DELETE FROM order_ticket WHERE id='".$id."'");
		
		if ($query) {
			$response = new emp();
			$response->success = 1;
			$response->message = "Pesanan berhasil di Cancel";
			die(json_encode($response));
		} else{ 
			$response = new emp();
			$response->success = 0;
			$response->message = "Cancel gagal";
			die(json_encode($response)); 
		}	
	}
?>