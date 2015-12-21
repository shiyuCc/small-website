<?php
    include('conn.php');

    if(isset($_POST["s_username"]) && isset($_POST["s_password"])){
        $user = $_POST["s_username"];
        $password = $_POST["s_password"];
        $queryUserName = "select user from account where user = '$user'";
        $resUserName = mysqli_query($link, $queryUserName);

        if(isset($resUserName) && (mysqli_num_rows($resUserName) == 0)){
            echo "Sign Up Successful! " . "<BR>";
            echo "<A href = '/kitchen.php'>Return to Homepage</A>";

            $insertAccountData = "insert into account (user,password) values ('$user','$password')";
            $insertUserName = mysqli_query($link, $insertAccountData);
        }
        else{
            echo "Username already used, please choose a different name!" . "<BR>";
            echo "<A href = '/kitchen.php'>Return to Homepage</A>";
        }
    }
?>