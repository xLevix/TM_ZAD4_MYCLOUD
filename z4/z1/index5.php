<?php
session_start();
if(isset($_SESSION['loggedin']))
{
    header("refresh:1; url=index4.php");
}
?>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Pauszek</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"> </script>
    <script src="https://unpkg.com/bowser@2.4.0/es5.js"></script>
    <script>
        var width = screen.width;
        var height = screen.height;
        var colorDepth = screen.colorDepth; //liczba bitów na kolor
        var java = navigator.javaEnabled(); //sprawdz czy java jest wlaczona
        var cookies = navigator.cookieEnabled; //is cookies enabled
        var language = navigator.language;
        var browserWidth = window.innerWidth;
        var browserHeight = window.innerHeight;
        var resolution = width + "x" + height;
        var browserResolution = browserWidth + "x" + browserHeight;
        var browser = bowser.getParser(window.navigator.userAgent);
        var browserName = browser.parsedResult.browser.name;
        var browserVersion = browser.parsedResult.browser.version;
        var os = browser.parsedResult.os.name;
        var osVersion = browser.parsedResult.os.version;
    </script>
</head>
<BODY>
Formularz logowania
<form method="post" action="block.php">
    Login:<input type="text" name="user" maxlength="20" size="20"><br>
    Hasło:<input type="password" name="pass" maxlength="20" size="20"><br>
    <script>
        document.write("<input type=\"hidden\" name=\"resolution\" value=\"" + resolution + "\">");
        document.write("<input type=\"hidden\" name=\"browserResolution\" value=\"" + browserResolution + "\">");
        document.write("<input type=\"hidden\" name=\"colorDepth\" value=\"" + colorDepth + "\">");
        document.write("<input type=\"hidden\" name=\"java\" value=\"" + java + "\">");
        document.write("<input type=\"hidden\" name=\"cookies\" value=\"" + cookies + "\">");
        document.write("<input type=\"hidden\" name=\"language\" value=\"" + language + "\">");
        document.write("<input type=\"hidden\" name=\"browser\" value=\"" + browserName + "\">");
        document.write("<input type=\"hidden\" name=\"browserVersion\" value=\"" + browserVersion + "\">");
        document.write("<input type=\"hidden\" name=\"os\" value=\"" + os + "\">");
        document.write("<input type=\"hidden\" name=\"osVersion\" value=\"" + osVersion + "\">");
    </script>
    <input type="submit" value="Send"/>
</form>
</BODY>
</HTML>