<?php
session_start();

error_reporting(-1);
ini_set('display_errors', 'On');
ini_set('allow_url_fopen', 'On');

if ($_SESSION['username']=="admin"){

}

$mysqli = new mysqli("pauszeipawel.mysql.db", "pauszeipawel", "Yr4pm4sUh4X5VQK", "pauszeipawel");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

$result = $mysqli->query("SELECT * from goscieportalu2");
echo '<table border="1">';
echo '<tr><td>user</td><td>success</td><td>ipaddress</td><td>datetime</td><td>region</td><td>country</td><td>city</td><td>loc</td><td>google maps</td><td>browser</td><td>screen resolution</td><td>browser resolution</td><td>color depth</td><td>cookies accept</td><td>java aplets accept</td><td>language</td></tr>';
while($row = $result->fetch_assoc())
{
    echo '<tr>';
    echo '<td>'.$row['user'].'</td>';
    echo '<td>'.$row['success'].'</td>';
    echo '<td>' . $row['ipaddress'] . '</td>';
    echo '<td>' . $row['datetime'] . '</td>';
    $ipaddress = $row['ipaddress'];
    $details = ip_details($ipaddress);
    echo '<td>' . $details -> region . '</td>';
    echo '<td>' . $details -> country . '</td>';
    echo '<td>' . $details -> city . '</td>';
    echo '<td>' . $details -> loc . '</td>';
    echo '<td><a href="https://www.google.com/maps/place/' . $details -> loc . '" target="_blank">google maps</a></td>';
    //add columns with the rest
    echo '<td>' . $row['przegladarka'] . '</td>';
    echo '<td>' . $row['rozdzielczosc_ekranu'] . '</td>';
    echo '<td>' . $row['rozdzielczosc_przegladarki'] . '</td>';
    echo '<td>' . $row['ilosc_kolorow_ekranu'] . '</td>';
    echo '<td>' . $row['cookies_accept'] . '</td>';
    echo '<td>' . $row['java_aplets_accept'] . '</td>';
    echo '<td>' . $row['jezyk'] . '</td>';
    echo '</tr>';
}
echo '</table>';

function ip_details($ip) {
    $json = file_get_contents ("http://ipinfo.io/{$ip}/geo?token=2127467ecfdfc4");
    $json = rtrim($json,  "\0");
    $details = json_decode ($json);
    return $details;
}