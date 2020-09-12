<?php
    session_start();
    include_once('functions.php');
    $userdata = new DB_con();

    
    if (isset($_POST['login_user'])) {
        $username = $_POST['username'];
        $password = md5($_POST['password']);
        

        $result = $userdata->loginadmin($username,$password);
        $num = mysqli_fetch_array($result);

        if ($num > 0) {
            $_SESSION['id'] = $num['id'];
            $_SESSION['fname'] = $num['firstname'];
            $_SESSION['lname'] = $num['lastname'];
            $_SESSION['status'] = $num['status'];
            echo "<script>alert('ล็อคอินสำเร็จแล้ว')</script>";
            if ($_SESSION['status'] == "2") {

                echo "<script>window.location.href='index_admin.php'</script>";
            } if ($_SESSION['status'] == "1") {

                echo "<script>window.location.href='index.php'</script>";

            }
           

        } else {
            echo "<script>alert('โปรกล็อคอินใหม่อีกครั้ง')</script>";
            echo "<script>window.location.href='login.php'</script>";
        }
    }
    
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V3</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="icon" type="image/png" href="adminlogin/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="adminlogin/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="adminlogin/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="adminlogin/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="adminlogin/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="adminlogin/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="adminlogin/css/util.css">
	<link rel="stylesheet" type="text/css" href="adminlogin/css/main.css">
	<script src="https://unpkg.com/feather-icons"></script>

</head>

<body>

<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 " >
				<div class="login100-pic js-tilt" data-tilt>
					<img src="adminlogin/images/img-01.png" alt="IMG">
				</div>
				<form method="post" class="login100-form validate-form" >
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
                    </div>
                    
					<div class="container-login100-form-btn">
						<button type="submit" name="login_user" class="login100-form-btn">
							Login
						</button>
					</div>

					
				</form>
			</div>
		</div>
	</div>
	



    <script src="adminlogin/vendor/jquery/jquery-3.2.1.min.js"></script>

	<script src="adminlogin/vendor/bootstrap/js/popper.js"></script>
	<script src="adminlogin/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="adminlogin/vendor/select2/select2.min.js"></script>

	<script src="adminlogin/vendor/tilt/tilt.jquery.min.js"></script>
	
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>

	<script>
	feather.replace()
	</script>
</body>
</html>