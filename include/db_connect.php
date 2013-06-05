<?php
    //Database Constants
    require("db_constants.php");
    
    $connection = mysql_connect(DB_SERVER,DB_USER,DB_PASS);
    if(!$connection) {
        die("Cannot Connect To Server! " . mysql_error());
    }
    
    $db_select = mysql_select_db(DB_NAME, $connection);
    if (!$db_select) {
        die("Cannot Select Database! " . mysql_error());
    }
?>