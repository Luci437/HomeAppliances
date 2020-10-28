
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Bootstrap E-commerce Templates</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		
		<!-- bootstrap -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
		<link href="themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="themes/css/main.css" rel="stylesheet"/>
		<link href="themes/css/jquery.fancybox.css" rel="stylesheet"/>
				
		<!-- scripts -->
		<script src="themes/js/jquery-1.7.2.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>				
		<script src="themes/js/superfish.js"></script>	
		<script src="themes/js/jquery.scrolltotop.js"></script>
		<script src="themes/js/jquery.fancybox.js"></script>
		
	</head>
    <body>		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
							
							<li><a href="index.php">Home Page</a></li>		
							<li><a href="cusregister.php">Are You Looking for Something?</a></li>
							<li><a href="register.php">Are You a Seller?</a></li>
							<li><a href="login.php">Already have an Account?</a></li>
												
								
						
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					
					<nav id="menu" class="pull-right">
						<ul>
																					
													
						
						</ul>
					</nav>
				</div>
			</section>
			<section class="header_text sub">
			<img class="pageBanner" src="themes/images/carousel/h2.jpg" alt="New products" > 
				<h4 style="color:#FF0000"><span><br>Product Detail</span></h4> 
				 <?php
								  include("dbcon.php");
								  $id=$_GET["id"];
//$qry="select * from login,role where login.role_id=role.role_id";
      $qry="select * from product where product_id='$id'";
$result=mysqli_query($con,$qry);
 $qa="select seller.store_name,seller.first_name,seller.last_name,seller.gst_no from seller,product where seller.seller_id=product.seller_id and product.product_id='$id'";
$resa=mysqli_query($con,$qa);

?>
			</section>
			<section class="main-content">				
				<div class="row">						
					<div class="span9">
						<div class="row">
						<?php
while($row=mysqli_fetch_array($result)){
?>							
							<div class="span4"> 
											
								<a href="uploads/<?php echo $row[6];?>" class="thumbnail" data-fancybox-group="group1" title="<?php echo $row[2];?>"> <img alt="" src="uploads/<?php echo $row[6];?>"></a>												
								<ul class="thumbnails small">								
									<li class="span1">
										<a href="uploads/<?php echo $row[9];?>" class="thumbnail" data-fancybox-group="group1" title="<?php echo $row[2];?>"><img src="uploads/<?php echo $row[9];?>" alt=""></a>
									</li>								
									<li class="span1">
										<a href="uploads/<?php echo $row[10];?>" class="thumbnail" data-fancybox-group="group1" title="<?php echo $row[2];?>"><img src="uploads/<?php echo $row[10];?>" alt=""></a>
									</li>													
									<li class="span1">
										<a href="uploads/<?php echo $row[11];?>" class="thumbnail" data-fancybox-group="group1" title="<?php echo $row[2];?>"><img src="uploads/<?php echo $row[11];?>" alt=""></a>
									</li>
									
								</ul>
								
							</div>
							<div class="span5" align="center">
								<address>
									<h5 style="color:#0000FF">Product Name: <?php echo $row[2];?></h5><br>
									<h5 style="color:#0000FF">Company Name: <?php echo $row[14];?></h5><br>
									<?php
while($rowa=mysqli_fetch_array($resa)){
?>				
									<h5 style="color:#0000FF">Store Name: <?php echo $rowa[0];?></h5><br>
									<h5 style="color:#0000FF">GST Number: <?php echo $rowa[3];?></h5><br>
									<h5 style="color:#0000FF">Seller Name: <?php echo $rowa[1];?>&nbsp;<?php echo $rowa[2];?></h5><br>
									
									<?php
									}
									?>
										<h5 style="color:#0000FF">Availability: <?php echo $row[4];?></h5><br>
											<h5 style="color:#0000FF">Rent: Rs.<?php echo $row[5];?></h5><br>
									
									</address>
							</div>
							
							<div class="span12" align="center"> <br>
								<form class="form-inline" action="login.php">
									
									<p>&nbsp;</p> 
									<label>Qty:</label>
									<input type="text" class="span1" placeholder="1">
									<button class="btn btn-inverse" type="submit">Add to cart</button>
								</form> <br>
							</div>							
						</div>
						<div class="row">
							<div class="span12">
								<ul class="nav nav-tabs" id="myTab">
									<li class="active"><a href="#home"><h4>Description</h4></a></li>
									<li class=""><a href="#profile"><h4>Additional Information</h4></a></li>
								</ul>							 
								<div class="tab-content">
									<div class="tab-pane active" id="home"><?php echo $row[3];?></div>
									<div class="tab-pane" id="profile">
										<table class="table table-striped shop_attributes">	
											<tbody>
												<tr class="">
													<th>Size</th>
													<td><?php echo $row[15];?></td>
												</tr>		
												<tr class="alt">
													<th>Colour</th>
													<td><?php echo $row[16];?></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>							
							</div>
							<?php
								}
								?>						
							<div class="span9">	
								<br>
								<!--
								<h4 class="title">
									<span class="pull-left"><span class="text"><strong>Related</strong> Products</span></span>
									<span class="pull-right">
										<a class="left button" href="#myCarousel-1" data-slide="prev"></a><a class="right button" href="#myCarousel-1" data-slide="next"></a>
									</span>
								</h4>
								<div id="myCarousel-1" class="carousel slide">
									<div class="carousel-inner">
										<div class="active item">
											<ul class="thumbnails listing-products">
												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>												
														<a href="product_detail.html"><img alt="" src="themes/images/ladies/6.jpg"></a><br/>
														<a href="product_detail.html" class="title">Wuam ultrices rutrum</a><br/>
														<a href="#" class="category">Suspendisse aliquet</a>
														<p class="price">$341</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>												
														<a href="product_detail.html"><img alt="" src="themes/images/ladies/5.jpg"></a><br/>
														<a href="product_detail.html" class="title">Fusce id molestie massa</a><br/>
														<a href="#" class="category">Phasellus consequat</a>
														<p class="price">$341</p>
													</div>
												</li>       
												<li class="span3">
													<div class="product-box">												
														<a href="product_detail.html"><img alt="" src="themes/images/ladies/4.jpg"></a><br/>
														<a href="product_detail.html" class="title">Praesent tempor sem</a><br/>
														<a href="#" class="category">Erat gravida</a>
														<p class="price">$28</p>
													</div>
												</li>												
											</ul>
										</div>
										<div class="item">
											<ul class="thumbnails listing-products">
												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>												
														<a href="product_detail.html"><img alt="" src="themes/images/ladies/1.jpg"></a><br/>
														<a href="product_detail.html" class="title">Fusce id molestie massa</a><br/>
														<a href="#" class="category">Phasellus consequat</a>
														<p class="price">$341</p>
													</div>
												</li>       
												<li class="span3">
													<div class="product-box">												
														<a href="product_detail.html"><img alt="" src="themes/images/ladies/2.jpg"></a><br/>
														<a href="product_detail.html">Praesent tempor sem</a><br/>
														<a href="#" class="category">Erat gravida</a>
														<p class="price">$28</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>												
														<a href="product_detail.html"><img alt="" src="themes/images/ladies/3.jpg"></a><br/>
														<a href="product_detail.html" class="title">Wuam ultrices rutrum</a><br/>
														<a href="#" class="category">Suspendisse aliquet</a>
														<p class="price">$341</p>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="span3 col">
						
						<br> <br> <br> <br> <br> <br> <br> <br> <br> <br><br> <br> <br> <br> <br><br> <br> <br> <br> <br><br> <br> <br> <br>
						<div class="block">
							<h4 class="title">
								<span class="pull-left"><span class="text">Randomize</span></span>
								<span class="pull-right">
									<a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
								</span>
							</h4>
							<div id="myCarousel" class="carousel slide">
								<div class="carousel-inner">
									<div class="active item">
										<ul class="thumbnails listing-products">
											<li class="span3">
												<div class="product-box">
													<span class="sale_tag"></span>												
													<a href="product_detail.html"><img alt="" src="themes/images/ladies/7.jpg"></a><br/>
													<a href="product_detail.html" class="title">Fusce id molestie massa</a><br/>
													<a href="#" class="category">Suspendisse aliquet</a>
													<p class="price">$261</p>
												</div>
											</li>
										</ul>
									</div>
									<div class="item">
										<ul class="thumbnails listing-products">
											<li class="span3">
												<div class="product-box">												
													<a href="product_detail.html"><img alt="" src="themes/images/ladies/8.jpg"></a><br/>
													<a href="product_detail.html" class="title">Tempor sem sodales</a><br/>
													<a href="#" class="category">Urna nec lectus mollis</a>
													<p class="price">$134</p>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						-->
					</div>
				</div>
			</section>			
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4></h4>
						<ul class="nav">
							<li><a href="./index.php">Homepage</a></li>  
							
							<li><a href="./login.php">Login</a></li>							
						</ul>					
					</div>
					<div class="span4">
						
					</div>
					<div class="span5">
						<p class="logo"><img src="themes/images/log.png" width="30" alt=""> <font color = "white" size="2">Nearby stores</font> </p>
						<p>You can get your products at lowest cost from your nearest store</p>
						<br/>
						
					</div>					
				</div>	
			</section>
			<section id="copyright">
				<span>Copyright spotive  All right reserved.</span>
			</section>
		</div>
		<script src="themes/js/common.js"></script>
		<script>
			$(function () {
				$('#myTab a:first').tab('show');
				$('#myTab a').click(function (e) {
					e.preventDefault();
					$(this).tab('show');
				})
			})
			$(document).ready(function() {
				$('.thumbnail').fancybox({
					openEffect  : 'none',
					closeEffect : 'none'
				});
				
				$('#myCarousel-2').carousel({
                    interval: 2500
                });								
			});
		</script>
    </body>
</html>