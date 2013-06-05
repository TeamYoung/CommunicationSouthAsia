<?php
	//Database Connection 
	include ('include/db_connect.php');
?>

<?php 
	$country = array("Population", "Internet Users");
	$row = array();
	$result = array();
	$query_string = "SELECT population, internet_users FROM saarc_internet_penetration_data";
	for ($i=1; $i<=2 ; $i++)
	{
		$row[$i-1]['name'] = $country[$i-1];
	}
	$query = mysql_query($query_string);
	$j = 0;
	while($r = mysql_fetch_array($query)){
		// print_r($r);
		for ( $i = 0; $i<=1; $i++){
		 	$row[$i]['data'][] = $r[$i];
		}
	}
	// print_r($row);
	print json_encode($row, JSON_NUMERIC_CHECK);

	//Database Connection Close
	mysql_close($connection);
?>

