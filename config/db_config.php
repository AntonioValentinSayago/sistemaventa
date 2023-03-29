
        <?php

        /* Connecting to the database. */
        $servidor = "localhost";
        $usuario = "root";
        $contraseña = "123456789";
        $base_de_datos = "lavanderia_sapito";
        $conexion = mysqli_connect($servidor, $usuario, $contraseña, $base_de_datos);
/* 
        if (mysqli_connect_errno()) {
            ?><h1 class="text-center text-success"><?php echo "Error de conexión: " . mysqli_connect_error();?></h1>  <?php
        } else {
            ?><h1 class="text-center text-success"><?php echo "Conexión Exitosa"; ?></h1> <?php
        } */
        ?>
   