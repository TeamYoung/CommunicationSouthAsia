<?php
	//Database Connection 
	include ('include/db_connect.php');
?>

<?php
	$query = mysql_query("SELECT * FROM nepal_internet_penetration_data");

	$rows = array();
	while($r = mysql_fetch_array($query)) {
		$row[0] = $r[0];
		$row[1] = $r[1];
		array_push($rows,$row);
	}

	print json_encode($rows, JSON_NUMERIC_CHECK);

	//Close Connection
	mysql_close($connection);
?>