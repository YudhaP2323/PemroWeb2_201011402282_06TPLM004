<?php
$con1 =mysqli_connect("localhost","root","",”lat_dbase”);
if(!$con1)
{
    die('Couldnotconnect:'.mysql_error());
}
mysql_query($con1,"DELETEFROMtbl_mhsWHERELastName='Prabowo'");
?>