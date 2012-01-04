<?php
/**
 * User: Marco Senkpiel
 * Date: 01.12.11
 * Time: 10:24
 */

require_once(realpath(dirname(__FILE__)). '/../../classes/db.config.php');

class WebService
{
	/**
	 * @var stdClass
	 */
	public $buffer;

	/**
	 * @var Database
	 */
	public $db;

	public function __construct()
	{
		$this->db = Database::obtain(DB_SERVER, DB_USER, DB_PASS, DB_DATABASE);
		$this->db->debug = true;
		$this->db->connect();

		// Puffer vorbereiten
		$this->buffer = new stdClass;
	}

	/**
	 * @return bool
	 */
	public function getGroupStage()
	{
		$sql = "
			SELECT
				t.countryCode AS teamCountryCode,
				t.id AS teamId,
				t.title AS teamTitle,
				g.title AS groupTitle
			FROM
				`".TBL_TEAMS."` AS t
			JOIN
				`".TBL_TEAMS_GROUPS_REL."` AS g_rel
				ON
					t.id = g_rel.teamId
			JOIN
				`".TBL_GROUPS."` AS g
				ON
					g_rel.groupId = g.id

			ORDER BY t.id";

		$rows = $this->db->query($sql);
		$currentGroupTitle = '';
		$groupList = array();
		$elements = 0;

		while ($record = $this->db->fetch($rows)) {

			if($currentGroupTitle != $record['groupTitle']) {
				$currentGroupTitle = $record['groupTitle'];

				$group = array(
					'title' => 	$currentGroupTitle,
					'teams' => array()
				);

				$elements = array_push($groupList, $group);
			}

			$team = array(
				'id' => $record['teamId'],
				'title' => $record['teamTitle'],
				'code' => $record['teamCountryCode']
			);

			array_push($groupList[$elements-1]['teams'], $team);
		}

		//var_dump($groupList);

		$this->buffer->groups = $groupList;

		return true;
	}

}
