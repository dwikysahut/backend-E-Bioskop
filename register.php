	<?php
	require "conn.php";
	$username = $_POST["username"];
	$email = $_POST["email"];
	$password = $_POST["password"];
	$gender = $_POST["gender"];
	$nama = $_POST["nama"];
	$enc_password=md5($password);

	if($conn){
		$cek = mysqli_query($conn,"SELECT * FROM user WHERE email='$email'");
		$cek2 = mysqli_query($conn,"SELECT * FROM user WHERE username='$username'");
		$num = mysqli_num_rows($cek);
		$num2 = mysqli_num_rows($cek2);
		if( $num == 0){
			if($num2==0){
				$insert = mysqli_query($conn,"INSERT INTO user VALUES(NULL, '$username', '$enc_password', '$email', '$nama', '$gender',2)");


				if($insert){
					echo "Register Success";

				} else {
					echo 'Register gagal';
				}
			}
			else{
				echo 'Username telah digunakan';
			}
		} else {
			echo 'Email telah terdaftar';
		}
	}else{
		echo "Connection Error";

	} ?>