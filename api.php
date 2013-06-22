<?php 

// Configurations
include_once('include/config/config.php');
// Database Singleton
include_once("include/config/database.php");
// URL Shortener Class
include_once("include/shortener/shortener.php");

try {
    if (!empty($_REQUEST['url'])) {
        $url = urldecode($_REQUEST['url']);

        // Instantiate Shortener
        $shortener = new Shortener();

        // Get domain
        $domain = $_SERVER['HTTP_HOST'] . "/";
        // Create new short code or get old if it already exists
        $short = $shortener->insertNewURL($url);
        $shortCodeURL = $domain . $short;

        echo $shortCodeURL;
    }

} catch (Exception $e) {
    echo "Error! " . $e->getMessage();
}
