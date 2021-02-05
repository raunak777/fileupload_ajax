<?php

include_once 'Fileupload.php';
$file = new Fileupload();
extract($_POST);
if ($_POST['action'] == "show") {
	$data = $file->get_data();
	print_r(json_encode($data));
}
?>