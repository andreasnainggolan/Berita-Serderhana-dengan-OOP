<?php

class Admin{

	private $_db;

	public function __construct()
	{
		$this->_db = Database::getInstance();
	}

	public function change_navbar($table,$column,$column_value,$username,$username_value)
	{
		return ($this->_db->change_data($table,$column,$column_value,$username,$username_value)) ? true : false;
	}

	public function createnews($fields = array())
	{
		return $this->_db->insert('news',$fields);
	}

	public function get_berita($table)
	{
		return $this->_db->get_data_all($table);
	}
}