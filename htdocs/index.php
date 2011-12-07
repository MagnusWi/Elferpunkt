<?php
//error_reporting(E_ALL);
//ini_set('display_errors', 1);

//require_once './classes/globals.inc.php';
//include './classes/Utils.singleton.php';


$path = $_SERVER['REQUEST_URI'];
$var_array = explode('/', $path);
array_splice($var_array, 0, 1);

$inc = '';
$params = array();




// META INFORMATIONS
$metaMainTitle = 'Elferpunkt';
$metaAuthor = 'Marco Senkpiel';



$error404Page = '404.php';
//$error404Page = 'start.php';


if(count($var_array) > 0)
{
	$page = $var_array[0];

	switch($page)
	{

		case 'overview' :
			$inc = 'overview.php';
			$pageTitle = 'Spielplan';
			$metaDescription = '';
			$metaKeywords = '';
			break;

		case 'rules' :
			$inc = 'rules.php';
			$pageTitle = 'Spielregeln';
			$metaDescription = '';
			$metaKeywords = '';
			break;

		case 'table' :
			$inc = 'table.php';
			$pageTitle = 'Tabelle';
			$metaDescription = '';
			$metaKeywords = '';
			break;

		case 'login' :
			$inc = 'login.php';
			$pageTitle = 'Login';
			$metaDescription = '';
			$metaKeywords = '';
			break;

		case 'register' :
			$inc = 'register.php';
			$pageTitle = 'Registrieren';
			$metaDescription = '';
			$metaKeywords = '';
			break;

		case 'imprint' :
			$inc = 'imprint.php';
			$pageTitle = 'Impressum';
			$metaDescription = '';
			$metaKeywords = '';
			break;

		default :
			$inc = 'start.php';
			$pageTitle = '';
			$metaDescription = '';
			$metaKeywords = '';
			break;
	}

	array_splice($var_array, 0, 1);

	foreach($var_array as $param => $val)
	{
		array_push($params, $val);
	}
}


// check if file exists else include error 404 page (e.g. start page)
if (!file_exists('./website/'.$inc))
{
	$inc = $error404Page;
}

// render page
include './website/'.$inc;
?>

