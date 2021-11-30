<?php
	include "conn.php";

	$json = array();
	class emp{}
	if($conn){
	

		$query 	= mysqli_query($conn,"SELECT order_ticket.* ,movie.title as movie_title, movie.image as movie_image, movie.date as movie_dateShow,movie.showtime as movie_showTime,status.status as status_name FROM order_ticket INNER JOIN movie on movie.id=order_ticket.id_movie INNER JOIN status ON status.id=order_ticket.status WHERE order_ticket.status=1 ORDER BY order_ticket.date_added ASC");

			while($row = mysqli_fetch_assoc($query)){
		$json[] = $row;
			
	}
	if(!empty($json)){
		$response = new emp();
			$response->success = 1;
			$response->message = "Sukses Mengambil Data Order";
			$response->data=$json;
			die(json_encode($response));
			}
		else{ 
			$response = new emp();
			$response->success = 0;
			$response->message = "Tidak Ada Transaksi";
			die(json_encode($response)); 
		}	
	}
	
?>