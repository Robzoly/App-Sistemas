// Configura la conexión a la base de datos

<?php

ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

$host = "localhost";
$port = "5432";
$dbname = "DB1";
$user = "postgres"; 
$password = "319011340";

    $nombre = $_POST['Nombre'];
    $apellidos = $_POST['Apellidos'];
    $usuario = $_POST['Usuario'];
    $correo = $_POST['Correo'];
    $contrasena = $_POST['Contrasena'];
    $edad = $_POST['Edad'];
    $peso = $_POST['Peso'];
    $estatura = $_POST['Estatura'];

    $query = "INSERT INTO usuarios (Nombre, Apellidos, Usuario, Correo, Contrasena, Edad, Peso, Estatura) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($query);
    $stmt->execute([$nombre, $apellidos, $usuario, $correo, $contrasena, $edad, $peso, $estatura]);

?>