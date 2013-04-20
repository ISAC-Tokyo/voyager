<?php

require_once("config.php");

$command = $_GET["cmd"];
if ($command == "getContext") {
	echo 1024;
} else if ($command == "talk") {
	$debug_hit_words = Array();

	$text = urldecode($_GET["text"] . "");
	$context = $_GET["context"] + 0;
	$sex = 2;

	$mysql = mysql_connect($mysql_host, $mysql_user, $mysql_password);
	mysql_select_db($mysql_db);

	if ( $context != 0 ){
		$query = "select * from `pv_words` where `pvw_value` = ".$context;
		$res = mysql_query($query);
		while ( $ret = mysql_fetch_array($res)) {
			$text .= $ret["pvw_word"];
		}
	}

//	echo $text. "\n";

	// 語句一覧を作成
	$query = "select * from `pv_searchwords`";
	$res = mysql_query($query);
//	echo $query . "\n";
	$regs = "";
	$wordIds = Array();
	while ( $ret = mysql_fetch_array($res) ){
		$regs .= $ret["pvs_sword"]. "|";
		$wordIds[$ret["pvs_sword"]] = $ret["pvs_word_id"];
	}
	$regs = trim($regs, "|");
	$result;
	preg_match_all("/" . $regs . "/u", 
		 $text,
		 $result);
	$ids = "";
//	print_r( $result );
	foreach ($result as $key => $value) {
		foreach ($value as $key2 => $value2) {
			if ($wordIds[$value2] != "") {
				$ids .= $wordIds[$value2] . ",";
			}
		}
	}
	$ids = trim($ids, ",");

	// 候補のワード一覧を取得
	$query = "select * from `pv_words` where `pvw_id` in (".$ids.")";

	$res = mysql_query($query);

	$typeCounts = Array();

	$locationValue = 0;
	$firstHitValue = 0;
	$compositePropertyValue = 0;

	while( $ret = mysql_fetch_array($res) ){
		array_push($debug_hit_words, $ret["pvw_word"]);
		$typeCounts[$ret["pvw_type"]] = ($typeCounts[$ret["pvw_type"]] + 0) + 1;
		if ( $ret["pvw_type"] == 2 ) {
			if ($firstHitValue == 0){
				$firstHitValue = $ret["pvw_value"];
			}
			$compositePropertyValue += $ret["pvw_value"] + 0;
		} else if ( $ret["pvw_type"] == 1) {
			$locationValue += $ret["pvw_value"];
		}
	}

	$resultValue = ($locationValue + $firstHitValue) . "," . 
		($locationValue + $compositePropertyValue);
	if ($typeCounts[1] > 1) {
		$resultValue = "-1" . "," . $resultValue;
	}

	$query = "select * from `pv_values` where `pvv_value` in (0, ".$resultValue.") and `pvv_sex` = " . ($sex + 0);
//	echo $query . "\n";
	$res = mysql_query($query);
	$unknownAnswer = "";
	$answer = "";
	$sceneId = 0;
	while( $ret = mysql_fetch_array($res) ){
//		echo $ret["pvv_value"]."\n";
		if ( $ret["pvv_value"] == 0 ) {
			if ($unknownAnswer == "") {	
				$unknownAnswer = $ret["pvv_result"];
			}
		}
		elseif ( $ret["pvv_value"] == -1 ) $unknownAnswer = $ret["pvv_result"];
		else {
			if ( $answer == "" || $ret["pvv_value"] == $compositePropertyValue) {
				$answer = $ret["pvv_result"];
				$sceneId = $ret["pvv_scene_id"];
			}
		}
//		echo $unknownAnswer;
	}

	$scenePath = "";
	if ( $sceneId != 0 ) {
		$query = "select * from `pv_scenes` where `pvc_id` = " . $sceneId;
		$res = mysql_query( $query );
		while( $ret = mysql_fetch_array($res) ) {
			$scenePath = $ret["pvc_path"];
		}
	}

	echo $scenePath."\t";

	if ( $answer != "" ) echo $answer;
	else echo $unknownAnswer;

	if ($isDebug) {
		echo "\n\n\n" . "[debug] hit words : ";
		print_r( $debug_hit_words );
	}
}
