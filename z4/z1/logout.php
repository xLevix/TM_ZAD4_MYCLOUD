<?php
session_start();
echo "Logout Successfully ";
$redirect = "index5.php";
session_destroy(); //zniszczenie sesji
header("Location: $redirect");
?>
