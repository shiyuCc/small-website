<?php
	$link = mysqli_connect('localhost', 'shiyu', '123456', 'kitchen');

	if (mysqli_connect_error()) {
	    die('Connect Error (' . mysqli_connect_errno() . ') ' . mysqli_connect_error());
	}
?>