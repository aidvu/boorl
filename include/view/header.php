<?php

$smarty = new BooSmarty();
$smarty->caching = true;

$smarty->assign('link', $_SERVER['HTTP_HOST']);
$smarty->assign('domain', DOMAIN);
$smarty->assign('gaCode', GA_CODE);

$smarty->display('include/view/tpl/header.tpl');
