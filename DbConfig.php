<?php
/*
*
**/
class DbConfig
{
public $servername;
public $username;
public $dbname;
public $password;
public $conn;


public function __construct()
{
	$this->servername="localhost";
	$this->username="root";
	$this->password="";
	$this->dbname="fileupload";
}

function createconn()
{
	$this->conn = new mysqli($this->servername, $this->username,$this->password, $this->dbname);
	if ($this->conn) {
		return $this->conn;
	}
	else{
		return "connection failed";
	}
}

}

?>