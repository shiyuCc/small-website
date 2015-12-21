<?php
	session_start();
	include('conn.php');

	if(isset($_POST["l_username"]) && isset($_POST["l_password"])){
		$user = $_POST["l_username"];
		$password = $_POST["l_password"];
		$queryAccount = "select * from account where user='$user' and password='$password'";
		$resAccount = mysqli_query($link, $queryAccount);

		if(isset($resAccount) && (mysqli_num_rows($resAccount) == 1)){
			$_SESSION["user"] = $user;
			$_SESSION["password"] = $password;

			echo "Login successful!" . "<BR>";
			echo "<A href='/kitchen.php'>Return to Homepage</A>";
		}
		else{
			echo "wrong username or password" . "<BR>";
			echo "<A href='/kitchen.php'>Return to Homepage</A>";
		}
	}
?>