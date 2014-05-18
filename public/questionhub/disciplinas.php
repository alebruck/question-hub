<?php
	echo $_GET["callback"]."(";
	$db = new SQLite3("questionhub.s3db");
	$query = "select * from disciplina";
	$results = $db->query($query);
	$disciplinas = array();
	while($row = $results->fetchArray(SQLITE3_ASSOC)) {
		array_push($disciplinas, $row);
	}
	echo json_encode($disciplinas);
?>);