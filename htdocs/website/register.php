<?php
require_once(dirname(__FILE__) . '/classes/db.config.php');
require_once(dirname(__FILE__) . '/classes/Database.singleton.php');

$db = Database::obtain(DB_SERVER, DB_USER, DB_PASS, DB_DATABASE);
$db->debug = true;
$db->connect();

if(count($params) > 0)
{
	if($params[0] == 'complete')
	{
		include('register.complete.php');
	}
	else
	{
		// header redirect

	}
}
else
{
	include('register.form.php');
}
