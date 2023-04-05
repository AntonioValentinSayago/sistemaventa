<?php

require_once 'model/UsuarioModelo.php';
class UsuarioController {
    public function mostrarUsuarios() {
        $usuarios = array();

        // Conexión a la base de datos
        $conexion = new mysqli("localhost", "root", "123456789", "lavanderia_sapito");

        // Consulta para obtener los usuarios
        $consulta = "SELECT * FROM notaPedido";
        $resultado = $conexion->query($consulta);

        // Recorrer los resultados y crear objetos Usuario
        while ($fila = $resultado->fetch_assoc()) {
            $usuario = new Usuario($fila['folioNota'], $fila['fechaEntrega'], $fila['dineroCuneta'], $fila['dineroPendiente'],$fila['totalPagar']);
            $usuarios[] = $usuario;
        }

        // Cerrar la conexión a la base de datos
        $conexion->close();

        // Cargar la vista y pasar los datos de los usuarios
        require_once 'views/usuarios.php';
    }
}
