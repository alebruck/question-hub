<?php
function my_json_encode($arr)
{
        //convmap since 0x80 char codes so it takes all multibyte codes (above ASCII 127). So such characters are being "hidden" from normal json_encoding
        array_walk_recursive($arr, function (&$item, $key) { if (is_string($item)) $item = mb_encode_numericentity($item, array (0x80, 0xffff, 0, 0xffff), 'UTF-8'); });
        return mb_decode_numericentity(json_encode($arr), array (0x80, 0xffff, 0, 0xffff), 'UTF-8');

}
	echo $_GET["callback"]."(";
	$db = new SQLite3("questionhub.s3db");
	$idarea = $_GET["idarea"];
	$query = "select * from questao where idarea=$idarea";
	$results = $db->query($query);
	$questoes = array();
	while($row = $results->fetchArray(SQLITE3_ASSOC)) {
		$query = "select iddisciplina from questaodisciplina where idquestao=".$row["id"];
		$results2 = $db->query($query);
		$row["disciplinas"]=array();
		while($row2 = $results2->fetchArray(SQLITE3_ASSOC)) {
			array_push($row["disciplinas"], $row2);
		}
		array_push($questoes, $row);

	}
	//print_r($questoes);
	//$questoes["length"] =
	echo my_json_encode($questoes);
?>);