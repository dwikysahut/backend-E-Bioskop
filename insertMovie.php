<?php
include "conn.php";
	$title 	= $_POST['title'];
	$desc 	= $_POST['description'];
	$date	= $_POST['date'];
	$rating = $_POST['rating'];
	$genre 	= $_POST['genre'];
	$image 	= $_POST['image'];
	$showtime 	= $_POST['showtime'];
	$stock 	= $_POST['stock'];
	class emp{}
	if($conn){
	if (empty($title) || empty($desc)|| empty($date)|| empty($rating)|| empty($genre)|| empty($image)|| empty($showtime)) { 
		$response = new emp();
		$response->success = 0;
		$response->message = "Field tidak boleh kosong"; 
		die(json_encode($response));
	} else {
		$query = mysqli_query($conn,"INSERT INTO movie VALUES(NULL, '$title', '$desc', '$date', '$rating', 
			'$genre', '$image','$showtime','$stock')");
		
		if ($query) {
			$response = new emp();
			$response->success = 1;
			$response->message = "Data berhasil di simpan";
			die(json_encode($response));
		} else{ 
			$response = new emp();
			$response->success = 0;
			$response->message = "Error simpan Data";
			die(json_encode($response)); 
		}	
	}
}
else{
	echo "Connection Error";

} 
?>