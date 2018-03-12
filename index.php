<?php
session_start();
if(isset($_POST['login'])) {
  $ip ='localhost';
  $username = 'root';
  $passwd = '';
  $dbname = 'harun_oes';
  $visibility = 1;
  $connection = mysqli_connect($ip, $username, $passwd, $dbname);
  $myusername = mysqli_real_escape_string($connection,$_POST['username']);
  $mypassword = mysqli_real_escape_string($connection,$_POST['password']);
  $sql = "SELECT `id` FROM registration WHERE `user_name`= '{$myusername}' and `password` = '{$mypassword}' AND `visible` = '{$visibility}'";
  $result = mysqli_query($connection,$sql);
  $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
  //$active = $row['active'];
  $count = mysqli_num_rows($result);
  // If result matched $myusername and $mypassword, table row must be 1 row
  if($count == 1) {
    $_SESSION['login_user'] = $myusername;
    //echo "<script>alert('hacked');</script>";
    header("location:welcome_page.php");
  }else {
    echo "<script>alert('Your Login Name or Password is invalid');</script>";
  }
}
?>


<?php 
if (isset($_POST['registration'])) {
  $user = 'root';
  $passwd = '';
  $ip = 'localhost';
  $dbname = 'harun_oes';
  $full_name = $_POST['full_name'];
  $username = $_POST['username'];
  $email = $_POST['email'];
  $mobile = $_POST['mobile'];
  $password = $_POST['password'];
  $connection_write = mysqli_connect($ip, $user, $passwd, $dbname);
  if (!mysqli_connect_errno()) {
    $visibility = 1;
    $query = "INSERT INTO registration (`full_name`, `user_name`, `email`,  `mobile`, `password`,`visible`)
             VALUES('{$full_name}', '{$username}', '{$email}', '{$mobile}', '{$password}', '{$visibility}')";
    if(mysqli_query($connection_write, $query)){
      echo "<script>alert('Your are successfully registerd');</script>";;
    }else{
      echo "Database Insert Failed";
    }
  }else{
    die("ERROR : ".mysqli_connect_error());
  }
  mysqli_close($connection_write);
}

 ?>


<div class="container">
	<?php include('top.php'); ?>
	<div class="login_registration">
		<div class="login_side">
			<div class="name">Login</div>
			<div class="Login_form">
				<form action="#" method="POST">
					<table>
						<tr><td><label for="user">Username</label></td></tr>
						<tr><td><input type="text" name="username" id="user" required=""></td></tr>
						<tr><td><br></td></tr>
						<tr><td><label for="passwd">Password</label></td></tr>
						<tr><td><input type="password" name="password" id="passwd" required=""></td></tr>
						<tr>
							<td><label class="checkbox"><input type="checkbox" name="RememberMe" id="rememberme" value="true">Remember Me</label></td>
						</tr>
						<tr><td><input type="submit" value="Login" name="login" id="login"></td></tr>
					</table>
				</form>
			</div>
		</div>
		<div class="registration_side">
			<div class="name">Registration</div>
			<div class="Registration_field">
				<form action="#" method="POST">
					<table>
						<tr><td><label for="Full Name">Full Name</label></td></tr>
						<tr><td><input type="text" name="full_name" id="Full Name" required="" value=""></td></tr>
						<tr><td><br></td></tr>
						<tr><td><label for="users">Username</label></td></tr>
						<tr><td><input type="text" name="username" id="users" required="" value=""></td></tr>
						<tr><td><br></td></tr>
						<tr><td><label for="Email">Email</label></td></tr>
						<tr><td><input type="text" name="email" id="Email" required="" value=""></td></tr>
						<tr><td><br></td></tr>
						<tr><td><label for="Mobile">Mobile</label></td></tr>
						<tr><td><input type="text" name="mobile" id="Mobile" required="" value=""></td></tr>
						<tr><td><br></td></tr>
						<tr><td><label for="password">Password</label></td></tr>
						<tr><td><input type="password" name="password" id="password" required="" value=""></td></tr>
						<tr><td><label class="checkbox"><input type="checkbox" name="RememberMe" id="rememberme" value="true">Remember Me</label></td></tr>
						<tr><td><input type="submit" name="registration" value="Register" class="btn btn-success" id="login"></td></tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	<?php include('footer.php'); ?>
</div>