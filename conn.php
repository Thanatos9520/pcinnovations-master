<?php

$conn = mysqli_connect("localhost","root","","pcinnovations");
$conn->set_charset("utf8");
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}
 
?>