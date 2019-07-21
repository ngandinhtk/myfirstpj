 
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Bootstrap-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link href="css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
	
	<div class="header">
		<?php include"modules/header.php"; ?> </div>
		<div class="main-content">
 
	<section class="contact py-5 container" id="contact">
<h3 class="title-w3ls text-center text-bl mb-5" style="font-size: 35px">Review Order</h3>
 
	 <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-muted">Your cart</span>
             
          </h4>
          <ol class="list-group mb-3">
          	<?php 
          	if (isset($_SESSION['cart'])) {
          		$total = 0;

          		foreach ($_SESSION['cart'] as $key){
          			?>
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                 
                  <h6 class="my-0" style="width: 200px;" ><?php echo $key['name'] ?>    </h6>
              </div>
                <span class="text-muted">	 
              	
				<input style="width: 30px;padding: 1px;" class="form-control" type="text" readonly name="id" value="<?php echo $key['qty']; ?>">
              	</span>
              <span class="text-muted">	 
              	<?php 
              	echo number_format($key["qty"] * $key["price"]); ?>$ </span>
	         </li>
	          <?php 

	          $total = $total + ($key["qty"] * $key["price"]);	
	    	  } ?> 
          
            <li class="list-group-item d-flex justify-content-between">
              <strong><span><p style="font-size: 20px;">Total (USD)</p></span></strong>
             <input type="hidden" name="total" value=" <?php echo number_format($total,1); ?>"> <strong class="text-muted" style="font-size: 23px;" > <?php echo number_format($total,1); ?> </strong> 
            </li>
          </ol>
		<?php }
		 ?>
          
        </div>
        <div class="col-md-8 order-md-1">
        <form  action="xuly/docheckout.php" method="post"> 
          <h4 class="mb-3">Billing address</h4> 
            <div class="mb-3">
              <label for="name">Your Name: </label>
              <input type="text" name="name" class="form-control"  placeholder="Name.." required >
               
            </div>
  			<div class="mb-3">
              <label for="address">Address</label>
              <input type="text" name="address" class="form-control"  placeholder="1234 Main St" required>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>    
          <div class="mb-3">
              <label for="phone">Phone</label>
              <input type="text" name="phone" class="form-control"  placeholder="090xxx" required>
              
            </div>    
			 <div class="mb-3">
              <label for="email">Email</label>
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">@</span>
                </div>
                <input type="email" name="email" class="form-control"  placeholder="Email.." required> 
              </div>
            </div>
            <div class="orderbtn" style="float: right;">
  			<input type="submit" class="btn btn-warning " name="submit" value="Place Order"> 
  				
  			</div>
             <button class="btn btn-primary " type="submit"><a href="listcart.php" style="color: white;">Edit Cart</a></button>
  		</form>
       
    </div>
	</div>
	
</section>

	</div> <!-- main content -->  

<div class="footer">
	<?php include"modules/footer.html"; ?> </div>
</body>
</html>