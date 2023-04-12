<?php

$servername = "127.0.0.1";
$username = "brian18088";
$password = "brian18088";
$dbname = "資料庫系統lab";

$mysqli = new mysqli($servername,$username,$password,$dbname);
                     
if ($mysqli->connect_errno) {
    die("Connection error: " . $mysqli->connect_error);
}

return $mysqli;