<!DOCTYPE html>
<html lang="en">
<head>
	<?php 	
	session_start();
	if(is_null($_SESSION['online'])){
		header('Location: '.'/inventariobrand/login/index.html');
	}		
	?>
	<title>Menu</title>
	<style>
	img {
  	border-radius: 35%;
	}

	h10{

		text-align: center;
		color: white;
		padding-top: 10px;
	}

	</style>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/logo.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<?php INCLUDE "../pathing.php";?>

	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100">				
					<span class="login100-form-logo">
					<img src="images/logo.jpg" alt="Brand" width="150" height="150">
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						Menu
					</span>

				
					<div class="container-login100-form-btn">				
					<?php 
					echo '<h10>Bem vindo, '.$_SESSION["user"].'!</h10>';
					
					?>
					<br>
					<br>
					</div>
					<div class="container-login100-form-btn">
					

		
					<?php echo "<form action='../$cadastros_menu'>"; ?>

					
						<button class="login100-form-btn" type="submit">
							Cadastros
						</button>
					<?php echo "</form>"; ?>
					</div>
					<br>		
					<div class="container-login100-form-btn">
					<?php echo "<form action='../$cadastros_equip_rede'>"; ?>
						<button class="login100-form-btn" type="submit">
							Rede
						</button>
					<?php echo "</form>"; ?>
					</div>
					<br>			
						<div class="container-login100-form-btn">
					<?php echo "<form action='../$relatorio'>"; ?>
						<button class="login100-form-btn">
							Relatorio							
						</button>
						<br>
					</form>
						<div class="container-login100-form-btn">
					<?php echo "<form action='../$logoff'>"; ?>
						<button class="login100-form-btn">
							Logoff							
						</button>
						<br>
					</form>

							





					<br>
					<br>
					<h10> Desenvolvido por Samuel Pereira. v0.2</h10>	
					</div>
					<br>	
			
				
			</div>
			
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>