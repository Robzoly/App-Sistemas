<?php

ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

session_start();
$user=$_SESSION['nombre_usuario'];
echo 'Loggin.html';

?>