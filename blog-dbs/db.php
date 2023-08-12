<?php

$host = "localhost";
$username = "root";
$password = "";
$database = "dbs";

$conn = mysqli_connect($host, $username, $password, $database);

if (!$conn) {
    die("Cannot connect to database");
}