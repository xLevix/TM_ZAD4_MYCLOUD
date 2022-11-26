<?php declare(strict_types=1); // włączenie typowania zmiennych w PHP >=7
session_start(); // zapewnia dostęp do zmienny sesyjnych w danym pliku
if (!isset($_SESSION['loggedin']))
{
    header('Location: index3.php');
    exit();
}
echo "Jestem zalogowany <br><br>";
echo '<a href="logout.php">Wyloguj</a>';
?>