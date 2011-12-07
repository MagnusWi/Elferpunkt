<?php
/**
 * User: Marco Senkpiel
 * Date: 01.12.11
 * Time: 10:24
 */

class TabService
{
	// Puffer für das Ergebnis
	public $buffer;

	public function __construct()
	{
		$this->db = Database::obtain(DB_SERVER, DB_USER, DB_PASS, DB_DATABASE);
		$this->db->debug = false;
		$this->db->connect();

		// Puffer vorbereiten
		$this->buffer = new stdClass;
	}

	// Die durch JSON-RPC aufzurufende Methode
	public function saveAnswer($answer)
	{

		//var_dump($answer);

		if(strtolower($answer) == 'answer3')
		{
			$this->buffer->answer = true;
		}
		else
		{
			//throw new Exception("Dieser Code ist falsch!");
			$this->buffer->answer = false;
		}

		return true;
	}

	public function saveParticipant($frontendFormData)
	{
		$formData = array();
		$formData['created'] = 'NOW()';

		foreach($frontendFormData as $key => $val)
		{
			$formData[$key] = $frontendFormData->$key->value;
		}

		$primaryId = $this->db->insert(TBL_PARTICIPANTS, $formData);

		if($primaryId)
		{
			$this->buffer->primaryId = $primaryId;
		}
		else
		{
			switch($this->db->errno)
			{
				case 1062 :
					throw new Exception("Sie haben bereits teilgenommen!");
					break;

				default :
					throw new Exception("A Database error occured! Please try again later.");
					break;
			}
		}

		return true;
	}
}
