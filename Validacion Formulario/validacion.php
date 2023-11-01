<?php

ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

require 'conexion.php';

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