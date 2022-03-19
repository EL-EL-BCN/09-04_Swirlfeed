<?php
ob_start(); // Turns on output bufferning
session_start();

$timezone = date_default_timezone_set("Europe/Madrid"); // find list of supported timezones - https://www.php.net/manual/en/timezones.php

$con = mysqli_connect("localhost", "root", "", "social");

if(mysqli_connect_errno()) {
	echo "Failed to connect!" . mysqli_connect_errno();  
}

?>