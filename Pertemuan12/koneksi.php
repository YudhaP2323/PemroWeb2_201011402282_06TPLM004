<?php
$dbhost1 ="localhost";
$dbuser1="root";
$dbpass1 ="";
$dbname1="db_latihan12";

//lakukankoneksidenganmysql
$connection=mysqli_connect($dbhost1,$dbuser1,$dbpass1,$dbname1);
if(!$connection)
{
    echo"Tidakdapatterhubungdengandatabase";
}
echo“Koneksiberhasil”;
?>