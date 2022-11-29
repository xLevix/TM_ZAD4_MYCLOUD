<?php
session_start();
ini_set('display_errors', '1'); // pokazuje błędy
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
?>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
<HEAD>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</HEAD>
<BODY>
<?php
$user = htmlentities ($_POST['user'], ENT_QUOTES, "UTF-8"); // rozbrojenie potencjalnej bomby w zmiennej $user
$pass = htmlentities ($_POST['pass'], ENT_QUOTES, "UTF-8"); // rozbrojenie potencjalnej bomby w zmien
$link = mysqli_connect("pauszeipawel.mysql.db", "pauszeipawel", "XXXXX", "pauszeipawel");
if(!$link) { echo"Błąd: ". mysqli_connect_errno()." ".mysqli_connect_error(); } // obsługa błędu połączenia z BD
mysqli_query($link, "SET NAMES 'utf8'"); // ustawienie polskich znaków
$result = mysqli_query($link, "SELECT * FROM users WHERE username='$user'"); // wiersza,
// w którym login=login z formularza
$rekord = mysqli_fetch_array($result); // wiersza z BD, struktura zmiennej jak w BD

function check($user_id){
    global $rekord, $link, $pass;
    if($rekord['password']==$pass) {
        $_SESSION ['loggedin'] = true;
        $_SESSION ['redirect5'] = true;
        $_SESSION ['username'] = $rekord['username'];
        echo "Logowanie Ok. Witaj : {$rekord['username']}.";
        header("refresh:3; url=../index1.php");
    } else {
        mysqli_query($link,'insert into loginattempts (user_id, ip, timestamp) values ("'.$user_id.'", "'.$_SERVER['REMOTE_ADDR'].'", "'.date('Y-m-d H:i:s', time()).'")'); //dodanie do bazy danych próby logowania
       // mysqli_close($link);
        echo "Błąd nazwy użytkownika lub hasla";
        header("refresh:3; url=index5.php");
    }
}

$browserName = $_POST['browser'];
$browserVersion = $_POST['browserVersion'];
$os = $_POST['os'];
$osVersion = $_POST['osVersion'];
$browser = $browserName . ' ' . $browserVersion . ' ' . $os . ' ' . $osVersion;
$resolution = $_POST['resolution'];
$browserResolution = $_POST['browserResolution'];
$colorDepth = $_POST['colorDepth'];
$java = $_POST['java'];
$cookies = $_POST['cookies'];
$language = $_POST['language'];
$ipaddress = $_SERVER["REMOTE_ADDR"];



if(!$rekord) //Jeśli brak, to nie ma użytkownika o podanym loginie
{
    mysqli_close($link); // zamknięcie połączenia z BD
    echo "Błąd nazwy użytkownika lub hasla";
    header("refresh:3; url=index5.php");

}
else
{ // jeśli $rekord istnieje

    $user_id = mysqli_query($link,'select id from users where username = "'.$user.'"');
    $user_id = mysqli_fetch_array($user_id);
    $user_id = $user_id['id'];


    $attempts = mysqli_query($link,'select users.id, password, count(loginattempts.id) from users left join loginattempts on users.id = loginattempts.user_id where users.username = "'.$user.'"  group by users.id');  //zwroc ilosc prob logowania uztkownika

    if(mysqli_fetch_array($attempts)['count(loginattempts.id)'] > 2){ //jezeli jest wiecej niz 2 proba logowania
        $attempts= mysqli_query($link,'select timestamp from loginattempts where user_id = "'.$user_id.'" order by timestamp desc limit 3'); //zwroc ostatnia probe logowania
        $attempts = mysqli_fetch_array($attempts);
        //slice all timestamps
        $attempts = array_slice($attempts, 0, 3);

        //sprawdzenie czy ostatnie 3 prob logowania byly w ciagu 5 minut
        $flag = false;
        foreach ($attempts as $attempt){
            $date = new DateTime($attempt);
            $now = new DateTime();
            $interval = $date->diff($now);
            if($interval->i > 5){
                $flag = true;
            }
        }

        //jezeli ostatnie 3 prob logowania byly w ciagu 5 minut i ostatnia proba byla byla w ciagu 1 minuty nastepuje blokada konta i wyswietlenie komunikatu o probach po prawidlowym logowaniu
        if(strtotime($attempts[0]) > strtotime(date('Y-m-d H:i:s', time())) - 60  && !$flag) {
            $ip = mysqli_query($link,'select ip from loginattempts where user_id = "'.$user_id.'" and timestamp = "'.$attempts[0].'"');
            $ip = mysqli_fetch_row($ip);
            $_SESSION['warning'] = 'DATA: ' . $attempts[0] . ' IP: ' . $ip[0]; //zapisanie do sesji informacji o ostatniej probie logowania
            echo "Zbyt wiele prób logowania. Spróbuj ponownie za 1 minutę";
            header("refresh:3; url=index5.php");
        }else{
            check($user_id);
        }

    }else{
        check($user_id);
    }

    $success = "false";

    if($rekord['password']==$pass){
        $success = "true";
    }

    $query_add="INSERT INTO goscieportalu2 (user,success,ipaddress, datetime, przegladarka,rozdzielczosc_ekranu ,rozdzielczosc_przegladarki,ilosc_kolorow_ekranu,cookies_accept,java_aplets_accept,jezyk ) VALUES ('$user','$success','$ipaddress', NOW(), '$browser', '$resolution', '$browserResolution', '$colorDepth', '$cookies', '$java', '$language')";
    mysqli_query($link,$query_add);
}
?>
</BODY>
</HTML>
