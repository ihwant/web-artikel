<?php
    $host="localhost";
    $user="root";
    $password="";
    $db="portalinfo";
    
    $kon = mysqli_connect($host,$user,$password,$db);
    if (!$kon){
          die("Koneksi gagal:".mysqli_connect_error());
    }
?>