<?php
$con1 =mysqli_connect("localhost","root","",”lat_dbase”);
if(!$con1)
{
    die('Couldnotconnect:'.mysql_error());
}
mysql_query($con1,"UPDATEtbl_mhsSETAge='36'
WHEREFirstName='Karina'ANDLastName='Suwandi'");
mysql_close($con1);
?>