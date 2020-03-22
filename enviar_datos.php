<?php
header("Content-type:text/html;charset=utf-8");
include('conectar.php');
sleep(2);
$conexion=conectarDB();
if ($_POST) {
  $nombre= ($_POST['nombre']);
  $categoria= $_POST['tipo2'];
  $telefono= $_POST['telefono'];
  $direccion= $_POST['direccion'];
  $detalle= $_POST['detalles'];
  $horario = $_POST['horario'];
  $contacto = $_POST['contacto'];
       $insercion = "INSERT INTO `comercios`(`nombre`, `tipo`, `telefono`, `adicional`, `contacto`, `horario`, `ubicacion`) VALUES ('$nombre','$categoria','$telefono','$detalle', '$contacto','$horario','$direccion')";
        if ($conexion->query($insercion) === TRUE) {
            echo json_encode(array('error'=>'false','msj'=>'Comercio agregado satisfactoriamente'));
            } else {
                echo json_encode(array('error'=>'true','msj'=>$conexion->error)); 
            }
            mysqli_close($conexion);
  }