<?php
session_start();
include("functions.php");
check_session_id();

$user_id = $_GET['user_id'];
$todo_id = $_GET['todo_id'];

$pdo = connect_to_db();

//$sql = 'INSERT INTO like_table (id, user_id, todo_id, created_at) VALUES (NULL, :user_id, :todo_id, now())';
$sql = 'SELECT COUNT(*) FROM like_table WHERE user_id=:user_id AND todo_id=:todo_id';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':user_id', $user_id, PDO::PARAM_STR);
$stmt->bindValue(':todo_id', $todo_id, PDO::PARAM_STR);

try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}
//fetchColumn 件数取り出し
$like_count = $stmt->fetchColumn();

if($like_count === 0){
    //されてなければinsert
   $sql = 'INSERT INTO like_table(id, user_id, todo_id, created_at) VALUES (NULL, :user_id, :todo_id, now())'; 
} else {
    //されてたらdelete
  $sql = 'DELETE FROM like_table WHERE user_id=:user_id AND todo_id=:todo_id';
}
   // 以下は前項と変更なし
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':user_id', $user_id, PDO::PARAM_STR);
$stmt->bindValue(':todo_id', $todo_id, PDO::PARAM_STR);

try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}  




header("Location:todo_read.php");
exit();
