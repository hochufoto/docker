<?php
$user = "test";
$password = "password";
$database = "test_database";
$table = "todo_list";

try {
  $db = new PDO("mysql:host=172.18.0.2;dbname=$database", $user, $password);
  echo "<h2>TODO</h2><ol>";
  foreach($db->query("SELECT content FROM $table") as $row) {
    echo "<li>" . $row['content'] . "</li>";
  }
  echo "</ol>";
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}

