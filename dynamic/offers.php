<?php

define('HOMEPAGE', 0); // Track homepage.
define('OFFER_PAGE', 1);// Track Article page.
define('JCMSTYPE', 0); // Track Current site language.

require_once("includes/initialize.php");

$currentTemplate	= Config::getCurrentTemplate('template');
$jVars 				= array();
$template 			= "template/web/offers.html";

require_once('views/modules.php');

template($template, $jVars, $currentTemplate);

?>