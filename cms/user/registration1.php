<?php
include('include/config.php');
error_reporting(0);
if(isset($_POST['submit']))
{
	$fullname=$_POST['fullname'];
	$email=$_POST['email'];
	$password=md5($_POST['password']);
	$contactno=$_POST['contactno'];
	$status=1;
	$query=mysqli_query($con,"insert into users(fullName,userEmail,password,contactNo,status) values('$fullname','$email','$password','$contactno','$status')");
	
	echo "<script>alert('Registration successfull. Now You can login');</script>";
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
	<title>User Regsitrations</title>
	<link rel="stylesheet" href="../admin/assets/css/adminstyle.css">
	<script>
function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'email='+$("#email").val(),
type: "POST",
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>
</head>

<!-- [ auth-signin ] start -->
<div class="auth-wrapper">
	<div class="content text-center">
			<h4 class="text-white">Online Grievance Redressal System <!--<hr/>--></h4>
		<div class="card borderless">
		<form method="post" autocomplete="off">
		<h6><span style="color:#fff;"> User Registration</span></h6>
			<div class="row align-items-center ">
				<div class="col-md-12">
				
						
					<div class="card-body">
						
				
						<div class="form-group mb-3">
							
							<input type="text" class="form-control" placeholder="Full Name" name="fullname" required="required" autofocus>
						</div>
						<div class="form-group mb-4">
							
							<input type="email" class="form-control" placeholder="Email ID" id="email" onBlur="userAvailability()" name="email" required="required">
		             		<span id="user-availability-status1" style="font-size:12px;"></span>
						</div>
						<div class="form-group mb-3">
							
							<input type="text" class="contact form-control"  maxlength="10" name="contactno" placeholder="Contact no" id="contact" required="required" autofocus>
							<!--<input type="text" class="contact form-control" id="mobile" maxlength="10" placeholder="enter your mobile number">-->
						
						</div>
						<div class="form-group mb-3">
						
							<select name="branch" id="branch" style="width:100%" class="form-control">
								<optgroup label="select your branch">
									<option value="CSE">CSE</option>
									<option value="ECE">ECE</option>
									<option value="EEE">EEE</option>
									<option value="CIVIL">CIVIL</option>
									<option value="MECH">MECH</option>
								</optgroup>
							</select>
							
						</div>
						<div class="form-group mb-3">
							
							<input type="password" class="form-control" placeholder="Password" required="required" name="password"><br >
						</div>
						<button class="btn btn-block btn-primary mb-4"  type="submit" name="submit" onclick="val()">Register</button>
						<hr>
						<p class="mb-2 text-white">After Registration! <a href="index.php" class="f-w-400 text-white">Login</a></p>
					</div>
					
                    <i class="fa fa-home " style="color: #dd4b39;" aria-hidden="true"><a class="text-white" href="../index.php">
		                    Back Home
		                </a></i>
					</div>
				</div>
			</form> 
		</div>
	</div>
</div>
<!-- [ auth-signin ] end -->

<!-- Required Js -->
<script src="../admin/assets/js/vendor-all.min.js"></script>
<script src="../admin/assets/js/plugins/bootstrap.min.js"></script>
<script>
        function validateForm() {
        
           var email = document.getElementById("email").value;
            var name=document.getElementById("name").value;
            var mobile=document.getElementById("mobile").value;
          
           
            var zeroRegex = /0/;
            var gmailRegex = /^[a-zA-Z1-9._%+-]+@gmail.com$/;
            var regx=/^[1-9]\d{9}$/
           
            // Resetting errors
            usernameError.innerHTML = "";
            if (name.trim() === '' || zeroRegex.test(name)) {
             alert('Please enter a valid name ');
             return false;
          }
          if ((!gmailRegex.test(email) && zeroRegex.test(email))){
              alert('Please enter a valid Gmail address.');
              return false;
          }

     
          if(mobile.trim==""){
            alert("please enter mobile number");
            return false;
        }
        else if((regx.test(mobile))){
            alert("mobile number submitted successfully")
        }else{
            alert("wrong mobile number");
        }
          
       

    return true;
   
        
        }
		
        </script>



</body>

</html>
