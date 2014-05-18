<?php
$db = new SQLite3("questionhub.s3db");
$nome = $_POST["nome"];
$ano = $_POST["ano"];
$modelo = $_POST["modelo"];
$inserir = "insert into prova (id,nome, ano, modelo) values (null,'$nome','$ano','$modelo')";
$db->exec($inserir);
$insertId = "SELECT last_insert_rowid() AS insert_id";
$result = $db->query($insertId);
$rows = $result->fetchArray(SQLITE3_ASSOC);
$insert_id    = $rows['insert_id'];
echo $insert_id;
?>