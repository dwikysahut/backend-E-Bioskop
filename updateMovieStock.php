<?php
	include "conn.php";
	
	$id 	= $_POST['id'];
	$jumlah =(int)$_POST['jumlah'];
	$type=$_POST['type'];


	
	class emp{}
	
	if (empty($id)) { 
		$response = new emp();
		$response->success = 0;
		$response->message = "Kolom isian tidak boleh kosong"; 
		die(json_encode($response));
	} else {
		//untuk cancel order
		if(!empty($type)){
		$query = mysqli_query($conn,"UPDATE movie SET stock=stock+'".$jumlah."'WHERE id='".$id."'");
	}
	else{
		$query = mysqli_query($conn,"UPDATE movie SET stock='".$jumlah."'WHERE id='".$id."'");
		}
		if ($query) {
			$response = new emp();
			$response->success = 1;
			$response->message = "Data berhasil di update";
			die(json_encode($response));
		} else{ 
			$response = new emp();
			$response->success = 0;
			$response->message = "Error update Data";
			die(json_encode($response)); 
		}	
	
}
?>