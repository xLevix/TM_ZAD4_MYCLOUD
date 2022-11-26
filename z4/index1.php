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
$dbhost="pauszeipawel.mysql.db"; $dbuser="pauszeipawel"; $dbpassword="Yr4pm4sUh4X5VQK"; $dbname="pauszeipawel";
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

//print every user files
$username = $_SESSION['username'];
//if Sessopm dir is set
$dir = "users/$username";

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
            function reload(location){
                document.cookie = 'dir='+location;
                window.location.reload();
            }
            </script>";
        }
        else
        {
            if (strpos($file, '.jpg') !== false || strpos($file, '.png') !== false || strpos($file, '.gif') !== false)
            {
                $file = "<img src='$loc' width='200' height='200'>";
            }
            elseif (strpos($file, '.mp4') !== false)
            {
                $file = "<video width='200' height='200' controls muted autoplay><source src='$loc' type='video/mp4'></video>";
            }
            elseif (strpos($file, '.mp3') !== false)
            {
                $file = "<audio controls><source src='$loc' type='audio/mpeg'></audio>";
            }

            //add image delete.png that delete file on click
            print "<TR><TD><a href='users/$username/$name' download>$name</a></TD><td>$file</td><td> <input type='image' src='delete.png' width='50' height='50' onclick=remove('".$loc."') > </td></TR>\n";
        }

    }
}
print "</TABLE>";
mysqli_close($connection);
?>
