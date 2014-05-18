<?php
function json_readable_encode($in, $indent = 0, $from_array = false)
{
    $_myself = __FUNCTION__;
    $_escape = function ($str)
    {
        return preg_replace("!([\b\t\n\r\f\"\\'])!", "\\\\\\1", $str);
    };

    $out = '';

    foreach ($in as $key=>$value)
    {
        $out .= str_repeat("\t", $indent + 1);
        $out .= "\"".$_escape((string)$key)."\": ";

        if (is_object($value) || is_array($value))
        {
            $out .= "\n";
            $out .= $_myself($value, $indent + 1);
        }
        elseif (is_bool($value))
        {
            $out .= $value ? 'true' : 'false';
        }
        elseif (is_null($value))
        {
            $out .= 'null';
        }
        elseif (is_string($value))
        {
            $out .= "\"" . $_escape($value) ."\"";
        }
        else
        {
            $out .= $value;
        }

        $out .= ",\n";
    }

    if (!empty($out))
    {
        $out = substr($out, 0, -2);
    }

    $out = str_repeat("\t", $indent) . "{\n" . $out;
    $out .= "\n" . str_repeat("\t", $indent) . "}";

    return $out;
}
function my_json_encode($arr)
{
        //convmap since 0x80 char codes so it takes all multibyte codes (above ASCII 127). So such characters are being "hidden" from normal json_encoding
        array_walk_recursive($arr, function (&$item, $key) { if (is_string($item)) $item = mb_encode_numericentity($item, array (0x80, 0xffff, 0, 0xffff), 'UTF-8'); });
        return mb_decode_numericentity(json_encode($arr), array (0x80, 0xffff, 0, 0xffff), 'UTF-8');

}

function utf8json($inArray) {

    static $depth = 0;

    /* our return object */
    $newArray = array();

    /* safety recursion limit */
    $depth ++;
    if($depth >= '30') {
        return false;
    }

    /* step through inArray */
    foreach($inArray as $key=>$val) {
        if(is_array($val)) {
            /* recurse on array elements */
            $newArray[$key] = utf8json($val);
        } else {
            /* encode string values */
            $newArray[$key] = utf8_encode($val);
        }
    }

    /* return utf8 encoded array */
    return $newArray;
}


	$db = new SQLite3("questionhub.s3db");
	$query = "select * from questao";
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
	echo json_encode(utf8json($questoes));
?>);