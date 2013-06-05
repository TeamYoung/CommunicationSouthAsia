<?php
	//Database Connection 
	include ('include/db_connect.php');
?>

<?php 
	$country = array("Afghnanistan", "Bangladesh", "Bhutan", "India", "Maldives", "Nepal", "Pakistan", "Sri Lanka");
	$row = array();
	$result = array();
	$query_string = "SELECT * FROM saarc_internet_data";
	for ($i=1; $i<=8 ; $i++)
	{
		$row[$i-1]['name'] = $country[$i-1];
	}
	$query = mysql_query($query_string);
	$j = 0;
	while($r = mysql_fetch_array($query)){
		// print_r($r);
		for ( $i = 1; $i<=8; $i++){
		 	$row[$i-1]['data'][] = $r[$i];
		}
	}
	//print_r($row);
	print json_encode($row, JSON_NUMERIC_CHECK);

	//Database Connection Close
	mysql_close($connection);
?>

