<?php
session_start();
ini_set('display_errors', '1'); // pokazuje błędy
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
if (!isset($_SESSION['loggedin']))
{
    header('Location: z1/index5.php');
    exit();
}

$time = date('H:i:s', time());
$user = $_SESSION['username'];
$post = $_POST['post'];
$receipt = $_POST['user'];
if (IsSet($_POST['post']) OR basename($_FILES["fileToUpload"]["name"]) !== null)
{
    $username = $_SESSION['username'];
    if (!file_exists("users/$username")) {
        mkdir("users/$username", 0777, true);
    }

    $target_dir=$_COOKIE['dir'];
    if ($_COOKIE['dir'] == null)
    {
        $target_dir = "users/$username/";
    }


    $target_file = $target_dir . "/". basename($_FILES["fileToUpload"]["name"]);
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file))
    { echo htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " uploaded."; }
    else { echo "Error uploading file."; }
    $url = $target_file;

    $dbhost="pauszeipawel.mysql.db"; $dbuser="pauszeipawel"; $dbpassword="Yr4pm4sUh4X5VQK"; $dbname="pauszeipawel";
    $connection = mysqli_connect($dbhost, $dbuser, $dbpassword, $dbname);
    if (!$connection)
    {
        echo " MySQL Connection error." . PHP_EOL;
        echo "Errno: " . mysqli_connect_errno() . PHP_EOL;
        echo "Error: " . mysqli_connect_error() . PHP_EOL;
        exit;
    }
    $result = mysqli_query($connection, "INSERT INTO files (username, url) VALUES ('$user', '$url');") or die ("DB error: $dbname");
    mysqli_close($connection);
}
header ('Location: index1.php');
?>