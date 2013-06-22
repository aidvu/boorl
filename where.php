<?php
	try {
		$key = $_GET['key'];
		// Instantiate Shortener
		$shortener = new Shortener();
		// Get Long URL for the given key
		$url = $shortener->getLongURL($key);
		$short = "<a class=\"highlight\" href=\"$key\">$url</a>";
	} catch (Exception $e) {
		$short = "<span class=\"highlight\">Nowhere...</span>";
	}
	
	include('include/view/where.php');
