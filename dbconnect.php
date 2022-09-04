<?php
	$servername = "localhost";
	$username = "root";
	$pswd = "";
	$dbname="portfolio";

	$conn = mysqli_connect($servername, $username, $pswd);
	if(!$conn){
		die("Connection error!".mysqli_connect_error());
		exit();
	}

	$db = mysqli_select_db($conn, $dbname);
	if(!$db){
		die("Database error".mysqli_error($conn));
	}else{
		//echo "Database sucessfull";
	}
?>