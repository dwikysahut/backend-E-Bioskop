<?php
	include "conn.php";
	
	$id 	= $_POST['id'];
	$title 	= $_POST['title'];
	$desc 	= $_POST['description'];
	$date	= $_POST['date'];
	$rating = $_POST['rating'];
	$genre 	= $_POST['genre'];
	$image 	= $_POST['image'];
	$showtime 	= $_POST['showtime'];
	$stock 	= $_POST['stock'];
	
	class emp{}
	
	if (empty($id) || empty($title) || empty($desc) || empty($date) || empty($rating) || empty($genre) || empty($image)|| empty($showtime)) { 
		$response = new emp();
		$response->success = 0;
		$response->message = "Kolom isian tidak boleh kosong"; 
		die(json_encode($response));
	} else {
		$query = mysqli_query($conn,"UPDATE movie SET title='".$title."', description='".$desc."',date='".$date."', rating='".$rating."',genre='".$genre."', image='".$image."',showtime='".$showtime."', stock='".$stock."'WHERE id='".$id."'");
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