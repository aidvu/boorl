<?php

try {
    $key = $_GET['key'];
    // Instantiate Shortener
    $shortener = new Shortener();
    // Get Long URL for the given key
    $url = $shortener->getLongURL($key);
} catch (Exception $e) {
    $url = false;
}

$smarty = new BooSmarty();

$smarty->assign('key', $key);
$smarty->assign('url', $url);

$smarty->display('include/view/tpl/where.tpl');
