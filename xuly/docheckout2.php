<?php 
 	include '../modules/config.php';

 if ( isset($_POST['submit'])  ) {
		 	$user_id ="";
		 	$max= mysql_query("SELECT max(id) FROM `users` ");
				if($max === FALSE) { 
				    die(mysql_error()); // TODO: better error handling
				}

				while($row = mysql_fetch_array($max))
				{
					$user_id = $row[0];
				}
		 
		$name = $_POST['name'];
		$email = $_POST['email'];
		$addr = $_POST['address'];
		$insert_cart=" INSERT INTO `orders`(user_id, user_address, user_email, user_name ) VALUES (  '".$user_id."',  '".$addr."', '".$email."', '".$name."' ) ";
		$ketqua=mysql_query($insert_cart); 
	 
	}
	 
 // 	header('location:../index.php');
	// echo "</pre>";

 ?>