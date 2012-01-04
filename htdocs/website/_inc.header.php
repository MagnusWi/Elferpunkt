<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta http-equiv="content-language" content="de" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="pragma" content="no-cache" />

		<meta name="description" content="<?= $metaDescription ?>" />
		<meta name="keywords" content="<?= $metaKeywords ?>" />
		<meta name="audience" content="all" />
		<meta name="robots" content="index, nofollow" />
		<meta name="revisit-after" content="1 day" />
		<meta name="siteinfo" content="robots.txt" />
		<meta name="page-topic" content="<?= $metaKeywords ?>" />
		<meta name="audience" content="all" />
		<meta name="date" content="<?= date("r") ?>" />
		<meta name="author" content="<?= $metaAuthor ?>" />
		<meta name="copyright" content="<?= $metaAuthor ?>" />
		<meta name="publisher" content="<?= $metaAuthor ?>" />
		<meta name="title" content="<?= ($pageTitle == '') ? $metaMainTitle : $metaMainTitle.' &raquo; '.$pageTitle ?>" />

		<meta property="og:title" content="<?= ($pageTitle == '') ? $metaMainTitle : $metaMainTitle.' &raquo; '.$pageTitle ?>" />
		<meta property="og:type" content="website" />
		<meta property="og:url" content="http://elferpunkt.de<?= $_SERVER['REQUEST_URI'] ?>" />
		<meta property="og:image" content="http://elferpunkt.de/website/assets/images/favicon.png" />
		<meta property="og:site_name" content="<?= $metaMainTitle ?>" />
		<meta property="og:locale" content="de_DE" />
		<meta property="fb:app_id" content="283177188364762" />

		<meta name="DC.Creator" content="<?= $metaAuthor ?>" />
		<meta name="DC.Publisher" content="<?= $metaAuthor ?>" />
		<meta name="DC.Rights" content="<?= $metaAuthor ?>" />
		<meta name="DC.Description" content="<?= $metaKeywords ?>" />
		<meta name="DC.Language" content="de" />

		<link rel="shortcut icon" href="/website/assets/images/favicon.png" />
		<link rel="icon" href="/website/assets/images/favicon.png" />

		<link type="text/css" rel="stylesheet" href="/website/css/reset.css" />
		<link type="text/css" rel="stylesheet" href="/website/css/style.css" />

		<script type="text/javascript" language="javascript"
				src="http://cdnjs.cloudflare.com/ajax/libs/json2/20110223/json2.js"></script>
		<script type="text/javascript" language="javascript"
				src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
		<script type="text/javascript" language="javascript"
								src="/website/js/JsonRpcClient.js"></script>
		<script type="text/javascript" language="javascript"
						src="/website/js/Elferpunkt.js"></script>

		<title><?= ($pageTitle == '') ? $metaMainTitle : $metaMainTitle.' &raquo; '.$pageTitle ?></title>

	</head>
	<body>
		<div id="fb-root"></div>
		<script type="text/javascript" language="javascript">
			/*
			window.fbAsyncInit = function() {
				FB.init({
					appId: '<?= FACEBOOK_APP_ID ?>', // App ID
					//channelUrl: '', // Channel File
					status: true, // check login status
					cookie: true, // enable cookies to allow the server to access the session
					oauth: true, // enable OAuth 2.0
					xfbml: true  // parse XFBML
				});

				// Additional initialization code here
			};

			// Load the SDK Asynchronously
			(function(d) {
				var js, id = 'facebook-jssdk';
				if (d.getElementById(id)) {
					return;
				}
				js = d.createElement('script');
				js.id = id;
				js.async = true;
				js.src = "//connect.facebook.net/de_DE/all.js";
				d.getElementsByTagName('head')[0].appendChild(js);
			}(document));
			*/
		</script>