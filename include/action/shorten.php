<?php

// Instantiate Shortener
$shortener = new Shortener();

try {
    // Check if form was submitted and add the URL to the database if it doesn't exist,
    // otherwise return the shortcode of the long_url
    $submitted = !empty($_POST['url']);

    if ($submitted) {
        $url = $_POST['url'];

        // Get domain
        $domain = "http://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
        // Create new short code or get old if it already exists
        $short = $shortener->insertNewURL($url);
        $shortCodeURL = $domain . $short;
    }
} catch (Exception $e) {
    // Catch exceptions if any arise and show a message
    echo '<div class="center info error">';
    echo "Error! " . $e->getMessage();
    echo '</div>';
    $submitted = false;
}

include('include/view/form.php');
