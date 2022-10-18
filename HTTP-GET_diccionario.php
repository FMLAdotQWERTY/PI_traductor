<?php
require ("conex_diccionario.php");

$esp_palabra = $_GET['esp_palabra'];

$consulta = "SELECT * FROM tabla_diccionario WHERE esp_palabra = '$esp_palabra'";
$registro = mysqli_query($conexion, $consulta);

$resultado = mysqli_fetch_assoc($registro);
echo json_encode($resultado);

mysqli_close($conexion);
?>
	