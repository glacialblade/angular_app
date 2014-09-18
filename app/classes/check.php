<?php
	session_start();
	if(empty($_SESSION['id']) || $_SESSOIN['id'] == ""){ http_response_code(400); die(); }
?>