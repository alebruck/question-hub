<?php
$db = new SQLite3("questionhub.s3db");
$idprova = $_POST["idprova"];
$iddisciplina = $_POST["iddisciplina"];
$num = $_POST["num"];
$img = $_POST["img"];
$img2 = $_POST["img2"];
$enunciado = $_POST["enunciado"];
$a = $_POST["a"];
$b = $_POST["b"];
$c = $_POST["c"];
$d = $_POST["d"];
$d = $_POST["d"];
$e = $_POST["correta"];
$inserir = "insert into questao (id,idprova,iddisciplina,num,img,img2,enunciado,a,b,c,d,e,correta) values (null,'$idprova','$iddisciplina','$num','$img','$img2','$enunciado','$a','$b','$c','$d','$e','$correta')";
$db->exec($inserir);
$insertId = "SELECT last_insert_rowid() AS insert_id";
$result = $db->query($insertId);
$rows = $result->fetchArray(SQLITE3_ASSOC);
$insert_id    = $rows['insert_id'];
echo $insert_id;
?>