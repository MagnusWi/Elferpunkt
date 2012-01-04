<?php
/**
 * User: Marco Senkpiel
 * Date: 27.09.11
 * Time: 10:30
 */

require_once(dirname(__FILE__) . '/../classes/db.config.php');
require_once(dirname(__FILE__) . '/../classes/Database.singleton.php');

// PHP Autoload Handler - Zum Nachladen der benötigten Klassen
function __autoload($class)
{
	require_once(dirname(__FILE__) . '/services/' . basename($class) . '.php');
}

// Check auf die pecl-extension...
if (!extension_loaded('json'))
{
	die("kein ext/json installiert");
}

// Antwort vorbereiten
$response = new stdClass;
$response->result = null;
$response->error = null;
$response->id = null;

try {

	// JSON-Daten direkt aus dem POST-Request einlesen
	$payload = json_decode(file_get_contents('php://input'));

	if (!$payload)
	{
		throw new Exception('no json data');
	}

	// Haben wir eine Methode?
	if (!isset($payload->method) || empty($payload->method))
	{
		throw new Exception('no method defined');
	}

	// Wir verwenden . als Trenner zwischen Klasse und Methode...
	if (strpos($payload->method, '.') === false)
	{
		throw new Exception('no class defined');
	}

	// JSON-Methode in Zielklasse und Methode aufspalten
	list($class, $method) = explode('.', $payload->method, 2);

	// Klasse instanzieren - das Laden übernimmt __autoload()
	$obj = new $class();

	if (!$obj)
	{
		throw new Exception("cannot instantiate class -> '$class'");
	}

	// Kennt unsere Klasse die gewünschte Methode?
	if (!is_callable(array($obj, $method)))
	{
		throw new Exception("undefined method '$method' in class '$class'");
	}

	// Methode aufrufen, ggfs. vorhandene Parameter weiterreichen ...
	if (!call_user_func_array(array($obj, $method), $payload->params))
	{
		throw new Exception("error while processing method '$method'");
	}

	// Das Ergebnis aus dem Puffer im result-Property sichern
	$response->result = $obj->buffer;
}
catch (Exception $e)
{
	// Irgendwas ist schiefgelaufen, Fehler-Objekt vorbereiten ..
	$err = new stdClass;

	// Daten aus der Exception übernehmen
	$err->message = $e->getMessage();
	$err->line = $e->getLine();
	$err->file = $e->getFile();
	$err->trace = $e->getTraceAsString();

	// und das Error-Property setzen
	$response->error = $err;
}

// Request-ID durchschleifen
$response->id = $payload->id;

// Gzip-Kompression aktivieren
//if(!ob_start("ob_gzhandler")) ob_start();

// Und unsere JSON-Antwort ausgeben
echo json_encode($response);
?>