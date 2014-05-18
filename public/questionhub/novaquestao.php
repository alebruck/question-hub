<?php
$db = new SQLite3("questionhub.s3db");
$update = false;
$idquestao=-1;
if(isset($_POST['idquestao'])) {
	$update = true;
	$idquestao = $_POST["idquestao"];
}
$idprova= $_POST["idprova"];
$idarea = $_POST["idarea"];

$azul = $_POST["azul"];
$amarelo= $_POST["amarelo"];
$branco = $_POST["branco"];
$rosa = $_POST["rosa"];
$cinza= $_POST["cinza"];


$img = $_POST["img"];
$img2 = $_POST["img2"];
$enunciado = $_POST["enunciado"];
$a = $_POST["a"];
$b = $_POST["b"];
$c = $_POST["c"];
$d = $_POST["d"];
$e = $_POST["e"];
$imga = $_POST["imga"];
$imgb = $_POST["imgb"];
$imgc = $_POST["imgc"];
$imgd = $_POST["imgd"];
$imge = $_POST["imge"];
$correta = $_POST["correta"];
$inserir = "insert into questao (id,idprova,idarea,azul, amarelo, branco, rosa, cinza,img,img2,enunciado,a,b,c,d,e,imga,imgb,imgc,imgd,imge,correta) values (null,'$idprova','$idarea','$azul','$amarelo','$branco','$rosa','$cinza','$img','$img2','$enunciado','$a','$b','$c','$d','$e','$imga','$imgb','$imgc','$imgd','$imge','$correta')";
$db->exec($inserir);
$insertId = "SELECT last_insert_rowid() AS insert_id";
$result = $db->query($insertId);
$rows = $result->fetchArray(SQLITE3_ASSOC);
$insert_id    = $rows['insert_id'];
if($update==true) {
	
	$deletarOld = "delete from questao where id=$idquestao";
	$db->exec($deletarOld);
	$deletarDisciplinas = "delete from questaodisciplina where idquestao=$idquestao";
	$db->exec($deletarDisciplinas);
	$update = "update questao set id=$idquestao where id=$insert_id";
	$db->exec($update);
	echo "Updated: $insert_id <br/>";
	$insert_id = $idquestao;
	
}
echo $insert_id;
$checkboxes = isset($_POST['checkbox_disciplinas']) ? $_POST['checkbox_disciplinas'] : array();
foreach($checkboxes as $iddisciplina) {
    // here you can use $value
	$inserir = "insert into questaodisciplina (id,idquestao,iddisciplina) values (null,'$insert_id','$iddisciplina')";
	$db->exec($inserir);
}




?>