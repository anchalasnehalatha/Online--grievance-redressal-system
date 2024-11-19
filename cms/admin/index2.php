<?php session_start();
//error_reporting(0);
include("include/config.php");
if(isset($_POST['submit']))
{
	$username=$_POST['username'];
	$password=md5($_POST['password']);
	$ret=mysqli_query($con,"SELECT * FROM admin WHERE username='$username' and password='$password'");
	$num=mysqli_fetch_array($ret);
	if($num>0)
	{
	$_SESSION['alogin']=$_POST['username'];
	$_SESSION['aid']=$num['id'];
	header("location:dashboard.php");
	}else{
	echo "<script>alert('Invalid username or password');</script>";
	//header("location:index.php");
	}
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
	<title>CMS | Admin login</title>
	<link rel="stylesheet" href="assets/css/adminstyle1.css">

	<link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;400;700&display=swap" rel="stylesheet">

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/bootstrap-icons.css" rel="stylesheet">

    <link href="css/templatemo-festava-live.css" rel="stylesheet">

	
</head>


<!-- [ auth-signin ] start -->
<div class="auth-wrapper " >
	<div class="content text-center">
		<h4 class="text-white">Online Grievance Redressal System <hr class="new"><span style="color:black;"> Admin Login</span></h4>
		<div class=" borderless">
			<div class="row align-items-center ">
				<div class="col-md-12 ">
					<form method="post">
					<div class="card-body ">
					
						<div class="form-group mb-3">
							<input class="form-control" id="username" name="username" type="text" placeholder="Username" required />
						</div>
						<div class="form-group mb-4">
							<input class="form-control pass-key" id="password" name="password" type="password" placeholder="Password" required >
							<!--<span class="show">SHOW</span>-->
						</div>
						
						<button class="btn btn-block btn-primary mb-4"  type="submit" name="submit">Signin</button>
						<hr>
						<p class="mb-2 text-muted text-white">Forgot password? <a href="reset-password.php " class="f-w-400  text-white">Reset</a></p>
					
					</div></form>
					  <i class="fa fa-home " style="color: #dd4b39;size:big; "  aria-hidden="true"><a class="text-white " href="../index.php">
		                    Back Home
		                </a></i>
				</div>
				
			</div>
		</div>
		
	</div>
</div>

</div>
<video src="bg.mp4" autoplay loop muted></video>
    <div class="login-box">
        <form action="#">
            <div class="inputBox">
                <input type="text" required>
                <label for="">Username</label>
            </div>

            <div class="inputBox">
                <input type="password" required>
                <label for="">Password</label>
            </div>

            <div class="remember">
                <input type="checkbox">Remember me
            </div>

            <div class="button">
                <input type="submit" value="Login">
            </div>
        </form>
    </div>

<!-- [ auth-signin ] end -->

<!-- Required Js -->
<script src="assets/js/vendor-all.min.js"></script>
<script src="assets/js/plugins/bootstrap.min.js"></script>

<script src="assets/js/pcoded.min.js"></script>



</body>

</html><!--
<script>

const pass_field = document.querySelector('.pass-key');
         const showBtn = document.querySelector('.show');
         showBtn.addEventListener('click', function(){
          if(pass_field.type === "password"){
            pass_field.type = "text";
            showBtn.textContent = "HIDE";
            showBtn.style.color = "#3498db";
          }else{
            pass_field.type = "password";
            showBtn.textContent = "SHOW";
            showBtn.style.color = "#222";
          }
         });
		 </script>-->
      
