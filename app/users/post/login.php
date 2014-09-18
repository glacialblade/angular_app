<?php
	require "../../classes/database.php";
	$database = new Database("projects");
	$request = json_decode(file_get_contents("php://input"));
	$data = $database->cleandata($request);

	$result = $database->get("SELECT * 
				              FROM users 
				              WHERE username = '{$data['username']}'
				                AND password = md5('{$data['password']}');",false);

	if($result){
		session_start();
		$_SESSION['id'] = $result->id;
		echo json_encode($result);
	}
	else{
		http_response_code(400);
	}
?>