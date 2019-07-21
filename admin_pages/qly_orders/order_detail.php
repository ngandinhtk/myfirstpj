<?php 
$con = mysqli_connect("localhost", "root", "", "bakeryshopdb") or die("Can connect to data base!!!");
$res = mysqli_query($con, "SELECT * from order_detail");
$data = $res->fetch_all();

mysqli_free_result($res);
mysqli_close($con);

header('Content-Type: text/html; charset=UTF-8');
 ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>USERS MANAGEMENT</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style>
#navbar{
	margin-top:50px;}
#tbl-first-row{
	font-weight:bold;}
#logout{
	padding-right:30px;}		
</style>
</head>
<body>

<div class="container">
    <div id="navbar" class="row">
    	<h3 style=" text-align: center; font-size: 35px; font-weight: 600; color: BLUE">ORDERS MANAGEMENT</h3>
    	<div class="col-sm-12">
        	<nav class="navbar navbar-default">
  				<div class="container-fluid">
                	<ul class="nav navbar-nav">
                        <li><a href="../index.html"><b> Dashboard</b></a></li>
                        <li><a href="showorder.php"> <b>Orders</b></a></li>
                	</ul>
                   
                </div>
            </nav>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-12">
        	
        	<table class="table table-striped">
            	<tr id="tbl-first-row">
                	<td width="8%">Bill ID</td> 
                	<td width="8%">Product ID</td>
                    <td width="23%">Product Name</td>
                    <td width="18%">Quantity</td>
                    <td width="20%">Total Price</td> 
                    <td width="5%"> </td>
                    <td width="5%"> </td>
                </tr>
                <?php 
						foreach ($data as $item) { ?>
						<tr>
							
							<td><?php echo $item[0]; ?></td>
							<td><?php echo $item[2]; ?></td>
							<td><?php echo $item[3]; ?></td>
							<td><?php echo $item[1]; ?></td>
							<td><?php echo $item[4]; ?></td> 
							<!-- <td> <?php echo '<a class="btn btn-success " href="edituser.php?id='.$item[0].'">Verify</a>'  ?> </td>
							<td> <?php echo '<a class="btn btn-danger" style="background:red"href="deleteuser.php?id='.$item[0].'">Delete</a>'  ?></td> -->
						</tr>

					<?php } ?>	
               
			</table>
            
        </div>
    </div>
</div>

</body>
</html>
