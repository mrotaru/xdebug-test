<?php

function truncate_str($string, $limit, $pad="..."){
	if(strlen($string) > $limit){
		$string = substr($string, 0, $limit-strlen($pad)).$pad;
	}
	return $string;
}

echo truncate_str("this string really needs to be truncated", 20);
