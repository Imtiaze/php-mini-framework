<?php 

require 'functions.php';
require 'Database.php';


$config = require('config.php');


$db = new Database($config['database']);

$id = $_GET['id'];
// $query = "select * from posts where id = {$id}"; Never inline user data
http://localhost:7000/?id=2; drop table user; will drop the table instead

$query = "Select * from posts where id = ?";

$posts = $db->query($query, [$id])->fetch(PDO::FETCH_ASSOC);
var_dump($posts);

require 'routes.php';
