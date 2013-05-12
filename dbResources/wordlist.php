<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>VOY∀GER</title>
	</head>
	<body>
<?php

require_once("config.php");

$command = $_GET["cmd"];
if ($command == "value") {
	$mysql = mysql_connect($mysql_host, $mysql_user, $mysql_password);
	mysql_select_db($mysql_db);

	$id = $_GET["id"] + 0;
	$query = "select * from `pv_values` where `pvv_word_ids` = '" . "1_" . $id . "' or `pvv_word_ids` like '*_".$id."_*'";
	$res = mysql_query($query);
	$array = Array();
	while ( $ret = mysql_fetch_array($res)) {
		array_push($array, $ret);
	}
	foreach ($array as $key => $value) {
		echo "ID ".$value["pvv_id"].". <h3>".$value["pvv_result"]."</h3>";
	}
}
if ($command == "wordList") {
	$mysql = mysql_connect($mysql_host, $mysql_user, $mysql_password);
	mysql_select_db($mysql_db);

	$query = "select * from `pv_words` left join `pv_searchwords` on `pv_words`.pvw_id = `pv_searchwords`.pvs_word_id";
	$res = mysql_query($query);
	$array = Array();
	while ( $ret = mysql_fetch_array($res)) {
		array_push($array, $ret);
	}

	$type = -1;
	$word = "";
	$swords = array();

	foreach ($array as $key => $value) {
		if ( $word != "" && $value["pvw_word"] != $word)
		{
			echo implode(", ", $swords);
			echo ")<br>";
			$swords = array();
		}
		if ( $value["pvw_type"] != $type)
		{
			$type = $value["pvw_type"];
			if ( $type == 1 ) echo "<h3>場所に関するワード</h3>";
			else if ( $type == 2 ) echo "<h3>特徴に関するワード</h3>";
		}
		if ( $value["pvw_word"] != $word)
		{
			$word = $value["pvw_word"];
			echo "ID ".$value["pvw_id"].".<b><a href='wordList.php?cmd=value&id=".$value["pvw_id"]."'>" .$word . "</a></b> (";
		}
		array_push($swords, $value["pvs_sword"]);
	}

	echo ")<br>";
}
?>
	</body>
</html>
