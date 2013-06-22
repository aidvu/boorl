<?php
	$key = $_GET['key'];
	
	try {
		$statistics = new Statistics($key);
		include('include/view/stats.php');
	} catch (Exception $e) {
		include('include/view/error.php');	
	}
