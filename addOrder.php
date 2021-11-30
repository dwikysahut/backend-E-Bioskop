<?php
include "conn.php";
	$id_movie 	= $_POST['id_movie'];
	$id_user 	= $_POST['id_user'];
	$status	= $_POST['status'];
	$kode = $_POST['kode'];
	$jumlah = $_POST['jumlah'];
	class emp{}
	if($conn){
	if (empty($id_movie) || empty($id_user)|| empty($status)|| empty($kode)|| empty($jumlah)) { 
		$response = new emp();
		$response->success = 0;
		$response->message = "Field tidak boleh kosong"; 
		die(json_encode($response));
	} else {
		$query = mysqli_query($conn,"INSERT INTO order_ticket VALUES(NULL, '$id_movie', '$id_user',
			'$jumlah', '$status', '$kode',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP)");
		
		if ($query) {
			$response = new emp();
			$response->success = 1;
			$response->message = "Pemesanan berhasil ..";
			die(json_encode($response));
		} else{ 
			$response = new emp();
			$response->success = 0;
			$response->message = "Pemesanan Gagal..";
			die(json_encode($response)); 
		}	
	}
}
else{
	echo "Connection Error";

} 
?>