<?php 
	//Database Connection 
	include ('include/db_connect.php');
?>

<?php
	$providers = array("Telephone", "NTC", "NCELL", "UTL", "SMART", "NSTPL");
	$row = array();
	$result = array();
	$query_string = "SELECT * FROM nepal_telecom_data";
	for ($i=1; $i<=6 ; $i++)
	{
		$row[$i-1]['name'] = $providers[$i-1];
	}
	$query = mysql_query($query_string);
	$j = 0;
	while($r = mysql_fetch_array($query)){
		// print_r($r);
		for ( $i = 1; $i<=6; $i++){
		 	$row[$i-1]['data'][] = $r[$i];
		}
	}
	//print_r($row);
	print json_encode($row, JSON_NUMERIC_CHECK);

	//Database Connection Close
	mysql_close($connection);
?>