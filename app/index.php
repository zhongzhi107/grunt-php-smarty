<?php

date_default_timezone_set("PRC");

require '../smarty/Smarty.class.php';

// 模板路径
$module = isset($_GET['module']) ? $_GET['module'] : 'user';
$action = isset($_GET['action']) ? $_GET['action'] : 'index';

// API路径
$api_path = "api/$module/$action.json";
if (file_exists($api_path)) {
	$json = json_decode(file_get_contents($api_path));
}

$smarty = new Smarty;

// smarty配置
$smarty->left_delimiter = '{%';
$smarty->right_delimiter = '%}';
$smarty->caching = false;
//$smarty->templates("./templates"); //设置模板目录 
//$smarty->templates_c("./templates_c"); //设置编译目录
$smarty->compile_dir = '../.tmp/templates_c';

//$smarty->force_compile = true;
//$smarty->debugging = true;
//$smarty->cache_lifetime = 120;

// 模板变量赋值
foreach ($json as $key => $value) {
	$smarty->assign($key, $value);
}

// 显示模板
$smarty->display("page/$module/$action.tpl");
