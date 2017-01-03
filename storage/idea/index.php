<?php

$servername = "mysql-5.5";
$username = "root";
$password = "root";

try {
    $conn = new PDO("mysql:host=$servername;", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Mysql Version \n"; 
    echo $conn->query('select version()')->fetchColumn();
    echo "\n Connected successfully"; 
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }
echo phpinfo();