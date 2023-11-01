// Configura la conexión a la base de datos

<?php

ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

$host = "localhost";
$port = "5432";
$dbname = "DB 1";
$user = "postgres"; 
$password = "319011340";

try {
    $conn = new PDO("pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$password");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $nombre = $_POST['Nombre'];
    $apellidos = $_POST['Apellidos'];
    $usuario = $_POST['Usuario'];
    $correo = $_POST['Correo'];
    $contraseña = $_POST['Contraseña'];
    $edad = $_POST['Edad'];
    $peso = $_POST['Peso'];
    $estatura = $_POST['Estatura'];

    $query = "INSERT INTO usuarios (Nombre, Apellidos, Usuario, Correo, Contraseña, Edad, Peso, Estatura) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($query);
    $stmt->execute([$nombre, $apellidos, $usuario, $correo, $contraseña, $edad, $peso, $estatura]);

    // Redirige a una página de éxito
    header("Location: pagina principal.html");
} catch (PDOException $e) {
    // Manejo de errores, redirige a una página de error
    header("Location: Loggin.html");
}

?>