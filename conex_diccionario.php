<?php
$hostname = "localhost";
$database = "base_diccionario";
$username = "root";
$password = "";

$conexion = mysqli_connect($hostname, $username, $password, $database);
mysqli_set_charset($conexion, "utf8");

?>