<?php

$error = false;

$smarty = new BooSmarty();

$key = $_GET['key'];

try {
    if (!empty($key)) {
        $statistics = new Statistics($key);

        $statisticsData['Browsers'] = $statistics->getBrowsers();
        $statisticsData['Operating Systems'] = $statistics->getOperatingSystems();
        $statisticsData['Countries'] = $statistics->getCountries();
        $statisticsData['Referers'] = $statistics->getReferers();

        $smarty->assign('statisticsData', $statisticsData);
    } else {
        $error = true;
    }
} catch (Exception $e) {
    $error = true;
}

$smarty->assign('error', $error);
$smarty->assign('key', $key);

$smarty->display('include/view/tpl/stats.tpl');
