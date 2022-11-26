<?php
session_start();
?>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
<HEAD>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</HEAD>
<BODY>
<?php
$user = htmlentities ($_POST['user'], ENT_QUOTES, "UTF-8"); // rozbrojenie potencjalnej bomby w zmiennej $user
$pass = htmlentities ($_POST['pass'], ENT_QUOTES, "UTF-8"); // rozbrojenie potencjalnej bomby w zmien
$pass2 = htmlentities ($_POST['pass2'], ENT_QUOTES, "UTF-8");

if ($pass != $pass2) //sprawdzebue czy hasła sa takie same
{
    echo "Hasła nie są takie same";
    header("refresh:2; url=rejestruj.php");
}else if($user == "" || $pass == "" || $pass2 == "") //sprawdzebue czy wszystkie pola są wypełnione
{
    echo "Wypełnij wszystkie pola";
    header("refresh:2; url=rejestruj.php");

}
else
{
    $link = mysqli_connect("pauszeipawel.mysql.db", "pauszeipawel", "Yr4pm4sUh4X5VQK", "pauszeipawel");
    if(!$link) { echo"Błąd: ". mysqli_connect_errno()." ".mysqli_connect_error(); } // obsługa błędu połączenia z BD
    //register user
    $sql = "INSERT INTO users (username, password) VALUES ('$user', '$pass')"; //dodaanie uzytkownika do bazy
    if (mysqli_query($link, $sql)) {
        echo "Dodano uzytkownika";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($link);
    }
    mysqli_close($link);
    header("refresh:2; url=index5.php");
}

?>
</BODY>
</HTML>