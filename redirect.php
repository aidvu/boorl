<?php
	try {
		$key = $_GET['key'];
		// Instantiate Shortener
		$shortener = new Shortener();
		// Get Long URL for the given key
		$url = $shortener->getLongURL($key);
		// Redirect
		header('HTTP/1.1 301 Moved Permanently');
		header('Location: ' . $url);
		$logger = new Log();
		$logger->log($key);
		exit();
	} catch (Exception $e) {
		include_once('where.php');
	}
