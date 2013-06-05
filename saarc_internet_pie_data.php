<?php
	//Database Connection
	include ('include/db_connect.php');
?>

<?php
	$result = mysql_query("SELECT * FROM saarc_internet_pie_data");

	$rows = array();
	while($r = mysql_fetch_array($result)) {
		$row[0] = $r[0];
		$row[1] = $r[1];
		array_push($rows,$row);
	}

	print json_encode($rows, JSON_NUMERIC_CHECK);

	//Database Connection Close
	mysql_close($connection);
?>