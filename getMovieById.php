<?php
	include "conn.php";

	$id 	= $_GET['id'];
	
	class emp{}
	if($conn){
	
	if (empty($id)) { 
		$response = new emp();
		$response->success = 0;
		$response->message = "Error Mengambil Data"; 
		die(json_encode($response));
	} else {
		$query 	= mysqli_query($conn,"SELECT * FROM movie WHERE id='".$id."'");
		$row 	= mysqli_fetch_array($query);
		
		if (!empty($row)) {
			$response = new emp();
			$response->success = 1;
			$response->id = $row["id"];
			$response->title = $row["title"];
			$response->description = $row["description"];
			$response->date = $row["date"];
			$response->rating = $row["rating"];
			$response->genre = $row["genre"];
			$response->image = $row["image"];
			$response->showtime = $row["showtime"];

			die(json_encode($response));
		} else{ 
			$response = new emp();
			$response->success = 0;
			$response->message = "Error Mengambil Data";
			die(json_encode($response)); 
		}	
	}
	}
?>