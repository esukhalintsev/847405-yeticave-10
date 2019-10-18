<?php
require_once('data.php');
require_once('helpers.php');
date_default_timezone_set("Europe/Moscow");

$page_content = include_template('main.php', [
        'categories' => $categories,
        'goods' => $goods
]);
$layout_content = include_template('layout.php', [
    'content' => $page_content,
    'title' => 'Главная',
    'is_auth' => $is_auth,
    'user_name' => $user_name,
    'categories' => $categories
]);

print($layout_content);
