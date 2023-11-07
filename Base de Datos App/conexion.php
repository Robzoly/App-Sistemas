<?php

ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

$host='localhost';
$port='5432';
$dbname='DB1';
$user='postgres';
$password='319011340';

$conexion=pg_connect("host=$host dbname=$bd user=$user password=$pass");

?>