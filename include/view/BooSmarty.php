<?php

// load Smarty library
require_once('libs/Smarty.class.php');

class BooSmarty extends Smarty {

   function __construct()
   {
        parent::__construct();

        $this->template_dir = getcwd() . '/templates/';
        $this->compile_dir  = getcwd() . '/templates_c/';
        $this->config_dir   = getcwd() . '/configs/';
        $this->cache_dir    = getcwd() . '/cache/';
   }
}
