<?php

// Configurations
require_once('include/config/config.php');
// Smarty
require_once('include/view/BooSmarty.php');

if (INSTALL != 1) {
    include_once('include/config/install.php');
    exit();
}

// Database Singleton
require_once("include/config/Database.php");
// URL Shortener Class
require_once("include/shortener/Shortener.php");
// Model for holding statistics
require_once('include/Helpers/Statistics.php');
// Log Class
require_once("include/Helpers/Log.php");

// Pick the action, if not fall to default
$action = !empty($_REQUEST['action']) ? $_REQUEST['action'] : 'shorten';

// The header
include('include/view/header.php');

// Do the action
include('include/action/' . $action . '.php');

// The footer
include('include/view/footer.php');
