<?php 
 
session_start(); 	

	 include '../modules/config.php';
	

	 if ( isset($_POST['submit'])  ) { 
		$name = $_POST['name'];
		$email = $_POST['email'];
		$addr = $_POST['address'];
		$phone = $_POST['phone'];
		$insert_cart=" INSERT INTO `orders`( user_address, user_email, user_name, phone ) VALUES (   '".$addr."', '".$email."', '".$name."', '".$phone."' ) ";
		$ketqua=mysql_query($insert_cart); 
	 
	}

	if (isset($_SESSION['cart']) ) {
	       	   $total = 0;	
	          	$cart_id = "";
	           $max= mysql_query("SELECT max(bill_id) FROM `orders` ");
					if($max === FALSE) { 
					    die(mysql_error()); // TODO: better error handling
					}

					while($row = mysql_fetch_array($max))
					{
					    	$cart_id = $row[0];
					}

	         foreach ($_SESSION['cart'] as $key => $value ) {

				$product_id =  $_SESSION['cart'][$key]['id'] ;
				$quantity=   $_SESSION['cart'][$key]['qty']; 
				$product_name=  $_SESSION['cart'][$key]['name']; 
				$total = $total + ( $_SESSION['cart'][$key]['price'] *  $_SESSION['cart'][$key]['qty']);
					
									 
				
				 $insert_cart_detail="INSERT  INTO `order_detail` (bill_id, quantity, product_id, product_name, total_price) VALUES ('".$cart_id."','".$quantity."','".$product_id."','".$product_name."','".$total."');";
				 $cart_detail= mysql_query($insert_cart_detail); 

			}
		} 
		unset($_SESSION['cart']);
		
		header('location:../thanks.php'); 
?>