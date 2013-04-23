<?php

require_once("config.php");

$command = $_GET["cmd"];
if ($command == "getContext") {
	echo 1;
} else if ($command == "talk") {
	$debug_hit_words = Array();

	$text = urldecode($_GET["text"] . "");
	$context = ($_GET["context"] + 0) . "";

	if ( $context == 1024 ) $context = 1;
	$contextLocation = "";

	$mysql = mysql_connect($mysql_host, $mysql_user, $mysql_password);
	mysql_select_db($mysql_db);

	if ( $context != 0 ){
		$query = "select * from `pv_words` where `pvw_id` = ".$context;
		$res = mysql_query($query);
		while ( $ret = mysql_fetch_array($res)) {
			$contextLocation = $ret["pvw_id"] + 0;
//			$text .= $ret["pvw_word"];
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

	$locationValue = "";
	$firstHitValue = "";
	$compositePropertyValue = "";

//	echo $ids;
	if ( $ids.length > 0 ) {
		// 候補のワード一覧を取得
		$query = "select * from `pv_words` where `pvw_id` in (".$ids.")";

		$res = mysql_query($query);
//		echo $query;

		$typeCounts = Array();
		$temp1 = Array();
		$temp2 = Array();
		if ( $contextLocation != 0) {
			$typeCounts[1] = 1;
			array_push($temp1, $contextLocation);
		}

// 絞り込む！
// 複数の位置がある場合＋複数ヒットした特徴ワード
// 複数の位置がある場合＋最初にヒットした特徴ワード
// ここまででヒットしなければエラー
// 位置が一つの場合＋複数ヒットした特徴ワード
// 位置が一つの場合＋最初にヒットした特徴ワード
// ここまででヒットしなければ.. (;_;)

		while( $ret = mysql_fetch_array($res) ){
			array_push($debug_hit_words, $ret["pvw_word"]);
			$typeCounts[$ret["pvw_type"]] = ($typeCounts[$ret["pvw_type"]] + 0) + 1;
			if ( $ret["pvw_type"] == 2 ) {
				if ($firstHitValue == ""){
					$firstHitValue = ($ret["pvw_id"] + 0);
				}
				array_push($temp2, ($ret["pvw_id"] + 0));
			} else if ( $ret["pvw_type"] == 1) {
				if ( $ret["pvw_id"] != $contextLocation ) {
					array_push($temp1, ($ret["pvw_id"] + 0));
				}
			}
		}

		sort($temp2);

		$compositePropertyValue = implode("_", $temp2);
		$locationValue = implode("_", $temp1);
	}



	$resultValue = "'" . ($locationValue . "_" . $firstHitValue) . "','" . 
		($locationValue . "_" . $compositePropertyValue) . "'";
	if ($typeCounts[1] > 1) {
		$resultValue = "'-1'" . "," . $resultValue;
	}

	$query = "select * from `pv_values` where `pvv_word_ids` in ('0', ".$resultValue.")";
//	echo $query . "\n";
	$res = mysql_query($query);
	$unknownAnswer = "";
	$answer = "";
	$sceneId = 0;
	while( $ret = mysql_fetch_array($res) ){
//		echo $ret["pvv_value"]."\n";
		if ( $ret["pvv_word_ids"] == "0" ) {
			if ($unknownAnswer == "") {	
				$unknownAnswer = $ret["pvv_result"];
			}
		}
		elseif ( $ret["pvv_word_ids"] == "-1" ) $unknownAnswer = $ret["pvv_result"];
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
	if ( $answer != "" ) {
		echo $answer;
	} else {
		echo $unknownAnswer;
	}

	$query = "insert into `pv_logs` (`pvl_input`, `pvl_time`, `pvl_success`) values ('" . mysql_real_escape_string($text)  . "', cast( now() as datetime ), '" . $sceneId . "')";
	mysql_query($query);

	if ($isDebug) {
		echo "\n\n\n" . "[debug] hit words : ";
		print_r( $debug_hit_words );
	}
}
