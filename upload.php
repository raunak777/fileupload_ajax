<?php
include_once 'Fileupload.php';
$file = new Fileupload();
extract($_POST);
if (isset($_FILES['filename']['name'])) {
	$name = $_POST['name'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$filename = $_FILES['filename']['name'];
	$tmp_name = $_FILES['filename']['tmp_name'];
	$ext = pathinfo($filename);

	$valid_ext = array('jpg','jpeg','png');
	if (in_array($ext['extension'], $valid_ext)) {
		$new_file_name = rand().".".$ext['extension'];
		$path = "upload/".$new_file_name;
		if (move_uploaded_file($tmp_name, $path)) {
			$data =$file->insert_data($name, $email, $path, $password);
			print_r($data);
		}
		else{
			echo 1;
		}
	}
	else{
		echo 2;
	}
}

?>