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
	<meta charset="UTF-8">
	<title>Animated Login Form</title>
	<link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;400;700&display=swap" rel="stylesheet">

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/bootstrap-icons.css" rel="stylesheet">

    <link href="css/templatemo-festava-live.css" rel="stylesheet">
</head>
<body>
	<div class="box">
		<form autocomplete="off">
			<h2>Sign in</h2>
			<div class="inputBox">
                <input class="form-control" id="username" name="username" type="text" placeholder="Username" required />
				<span>Userame</span>
				
			</div>
			<div class="inputBox">
            <input class="form-control pass-key" id="password" name="password" type="password" placeholder="Password" required >
				<span>Password</span>
				
			</div>
			<div class="links">
				<a href="#">Forgot Password ?</a>
				<a href="#">Signup</a>
			</div>
			<input type="submit" value="Login">
            
		</form>
	</div>
</body>
</html>