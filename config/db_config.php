<?php

/* Connecting to the database. */
$servidor = "localhost";
$usuario = "root";
$contraseña = "123456789";
$base_de_datos = "lavanderia_sapito";
$conexion = mysqli_connect($servidor, $usuario, $contraseña, $base_de_datos);

if (mysqli_connect_errno()) 
{
    echo "Error de conexión: " . mysqli_connect_error();
}else 
{
    echo"Conexion Exitosa";
}
?>
