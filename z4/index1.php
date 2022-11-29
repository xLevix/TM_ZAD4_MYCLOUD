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
$dbhost="pauszeipawel.mysql.db"; $dbuser="pauszeipawel"; $dbpassword="XXXXX"; $dbname="pauszeipawel";
$connection = mysqli_connect($dbhost, $dbuser, $dbpassword, $dbname);

if (!$connection)
{
    echo " MySQL Connection error." . PHP_EOL;
    echo "Errno: " . mysqli_connect_errno() . PHP_EOL;
    exit;
}

?>
<form method="POST" action="add.php" enctype="multipart/form-data"><br>
    <label>
        <input type="file" name="fileToUpload" id="fileToUpload" style="display: none" onchange="form.submit()"><br>
        <img src="upload.png" width="50" height="50"><br>
    </label>
</form>

<script>
    function remove(location) {
        document.cookie = "location=" + location;
        window.location.reload();
    }
</script>

<?php

if (isset($_SESSION['warning']))  //jezeli bylo duzo prob nieskutecznych logowan, wyswietl alert po poprawnym zalogowaniu
{
    echo "<script>alert('UWAGA! OSTANIA NIEUDANA PROBA LOGOWANIA: ".$_SESSION['warning']."');</script>";
    unset($_SESSION['warning']);
}

$username = $_SESSION['username'];
$dir = "users/$username";

//jezeli zmienna sesyjna dir jest ustawiona, to znaczy, ze uzytkownik kliknal ikone wejscia do danego folderu, wiec musimy zmienic sciezke wystietlnaych plikow na sciezke folderu, ktory uzytkownik wybral i wyswietlic obrazek do powrotu do folderu nadrzednego
if(isset($_COOKIE['dir'])){
    $dir = $_COOKIE['dir'];
    if ($dir != "users/$username"){
        echo "<input type='image' src='back.png' width='50' height='50' onclick='back()'>";
    }

    echo "<script>
    function back(){
        document.cookie = 'dir=users/$username';
        window.location.reload();
    }
    </script>";
}

//jezeli uzytkownik jest w folderze nadrzednym ma mozliwosc dodania nowego folderu
if (!isset($_COOKIE['dir']) || $_COOKIE['dir'] == "users/$username"){
    echo "<input type='image' src='create.png' width='50' height='50' onclick='createdir()'>";
    echo "<script>
    function createdir(){
        var dir = prompt('Podaj nazwę folderu');
        document.cookie = 'create=users/$username/' + dir;
        window.location.reload();
    }
    </script>";
}

if (isset($_COOKIE['create'])){
    $dir = $_COOKIE['create'];
    mkdir($dir);
    setcookie('create', '', time() - 3600);
    echo "<script>
    window.location.reload();
    </script>";
}

//przy usuwaniu plikow (nacisniecie ikony kosza) wywoluje sie funckja remove, ktora ustawia cookie z dana sciezka do pliku
//wiec jezeli cookie jest aktywne, usuwam dany plik i odswiezam strone
//jezeli uzytkownik usunal folder, to najpierw usuwam wszystkie pliki wewnatrz folderu, a dopiero potem folder
if (isset($_COOKIE['location'])){
    $location = $_COOKIE['location'];
    if (is_dir($location)){
        foreach(scandir($location) as $file) {
            if ('.' === $file || '..' === $file) continue;
            if (is_dir("$location/$file")) rmdir_recursive("$location/$file");
            else unlink("$location/$file");
        }
        rmdir($location);
    }else{
        unlink($_COOKIE['location']);
    }
    setcookie("location", "", time() - 3600);
}

print "<TABLE CELLPADDING=5 BORDER=1>";
print "<TR><TD>fileName</TD><td>attachmentPreview</td><td></td></TR>\n";
$files = scandir($dir);
foreach ($files as $file)
{
    if ($file != "." && $file != "..")
    {
        $name = $file;
        if (isset($_COOKIE['dir'])){
            $loc = $_COOKIE['dir'] . "/$file";
        }else{
            $loc = "users/$username/$file";
        }

        if (is_dir("users/$username/$file"))
        {
            $file="<input type='image' src='inside.png' width='50' height='50' onclick=reload('".$loc."')>";
            print "<TR><TD>$name</TD><td>$file</td><td><input type='image' src='delete.png' width='50' height='50' onclick=remove('".$loc."')></td></TR>\n";
            echo "<script>
            //zmiana sciezki wyswietlanych plikow na sciezke folderu, ktory uzytkownik wybral
            function reload(location){
                document.cookie = 'dir='+location;
                window.location.reload();
            }
            </script>";
        }
        else
        {
            //wyswietlanie mniejszej wersji obrazka/ filmow / plikow audio
            if (strpos($file, '.jpg') !== false || strpos($file, '.png') !== false || strpos($file, '.gif') !== false)
            {
                $file = "<a href='$loc' target='_blank'><img src='$loc' width='200' height='200'></a>";
            }
            elseif (strpos($file, '.mp4') !== false)
            {
                $file = "<video width='200' height='200' controls><source src='$loc' type='video/mp4'></video>";
            }
            elseif (strpos($file, '.mp3') !== false)
            {
                $file = "<audio controls><source src='$loc' type='audio/mpeg'></audio>";
            }

            //po kliknieciu na nazwe pliku, nastepuje pobranie pliku
            print "<TR><TD><a href='$loc' download>$name</a></TD><td>$file</td><td> <input type='image' src='delete.png' width='50' height='50' onclick=remove('".$loc."') > </td></TR>\n";
        }

    }
}
print "</TABLE>";
mysqli_close($connection);
?>
