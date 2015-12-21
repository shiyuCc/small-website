<?php
	include ("./include/class.FastTemplate.php");
	$tpl = new FastTemplate("./templates");
	$tpl->define(array("main"=>"main.html",
		"search"=>"searchFood.html",
		"h"=>"h.html",
		"link"=>"link.html",
		"login"=>"login.html",
		"signup"=>"signup.html"));

	$tpl->assign("STYLE","./styles/style.css");
	$tpl->assign("TITLE","Shiyu's Kitchen");
	$tpl->assign("HEADING","Shiyu's Kitchen");
	$tpl->assign("URL","http://localhost/topRecipeDisplay.php");
	$tpl->assign("CONTENT","Top 10 recipes");
	$tpl->parse("BODY",".h");
	$tpl->parse("BODY",".link");
	$tpl->parse("BODY",".login");
	$tpl->parse("BODY",".signup");
	$tpl->parse("BODY",".search");
	$tpl->parse("BODY","main");
	$tpl->FastPrint();	
?>