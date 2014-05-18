<?php
$db = new SQLite3("questionhub.s3db");
$nome = $_POST["nome"];
$inserir = "insert into area (id,nome) values (null,'$nome')";
$db->exec($inserir);
$insertId = "SELECT last_insert_rowid() AS insert_id";
$result = $db->query($insertId);
$rows = $result->fetchArray(SQLITE3_ASSOC);
$insert_id    = $rows['insert_id'];
echo $insert_id;
?>