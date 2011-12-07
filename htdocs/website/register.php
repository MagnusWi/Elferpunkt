<?php
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
