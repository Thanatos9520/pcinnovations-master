<?php

$conn = mysqli_connect("localhost","root","","pcinnovations");

if (!$conn->set_charset("utf8")) {
	die("Connection failed: " . mysqli_connect_error());
}
mysqli_set_charset($conn, 'utf8' );
/*
mysqli_character_set_name($conn);

if (!mysqli_set_charset($conn, "utf8")) {
    printf("", mysqli_error($conn));
    exit();
} else {
    printf("", mysqli_character_set_name($conn));
}
*/

?>