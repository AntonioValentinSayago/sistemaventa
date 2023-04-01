<?php 
    include("config/db_config.php");

    $nombreProducto = $_POST["nombreProducto"];
    $descripcion = $_POST["descripcion"];
    $existencia = $_POST["existencia"];

    $insertar = "INSERT INTO inventario (nombreProducto, cantidadProducto,descripcion, estatus)
                VALUES ('$nombreProducto',$existencia,'$descripcion','Disponible')";
    $insertar = mysqli_query($conexion, $insertar);


header("Location: inventario.php");




