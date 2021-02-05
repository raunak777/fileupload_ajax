<?php

include_once 'DbConfig.php';

/**
 * 
 */
class Fileupload
{
	public $conn;
	function __construct()
	{
		$db = new DbConfig();
		$this->conn = $db->createconn();
		
	}

	public function insert_data($name, $email, $file, $password)
	{
		$query = "INSERT INTO `registration`(`name`, `email`, `password`, `files`) VALUES ('$name', '$email', '$password','$file')";
		$res = $this->conn->query($query);
		if ($res) {
			echo 0;
		}
		else{
			echo 3;
		}
	}

	public function get_data()
	{	

		$query = "SELECT id,name, email, files FROM `registration` WHERE 1";
		$res = $this->conn->query($query);
		if ($res->num_rows>0) {
			while ($rows = $res->fetch_assoc()) {
				$arr['data'][] =array($rows['id'],$rows['name'],$rows['email'],$rows['files'],$rows['files']);
			}
			return $arr;
		}
		else{
			return false;
		}
	}

}


?>