<?php 
	echo $_GET["callback"]."(";
	$db = new SQLite3("questionhub.s3db");
	$query = "select * from prova";
	$results = $db->query($query);
	$provas = array();
	while($row = $results->fetchArray(SQLITE3_ASSOC)) {
		array_push($provas, $row);
	}
	echo json_encode($provas);
?>);