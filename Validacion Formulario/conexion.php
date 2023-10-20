<?php

require 'formulario.php';

session_start();

$usuario=$_POST['txtusuario'];
$clave=$_POST['txtpassword'];

$query=("SELECT*FROM usuarios WHERE 
Usuario='$usuario' AND Contraseña='$clave");

$consulta=pg_query($conexion,$query);
$cantidad=pg_num_rows($consulta);

if ($cantidad>0){

    $_SESSION['nombre_usuario']=$usuario;
    header('Location:ingreso.php');
}
else{
    echo "Datos Incorrectos";
}