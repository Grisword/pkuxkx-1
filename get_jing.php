<?php
$t=iconv("GBK", "UTF-8", $argv[1]);
$trans = array(")" => "", "(" => "","（"=>"" ,"）"=>""," "=>"");
$t=strtr($t, $trans);
$db = new SQLite3('jingshu.db');
if($r=$db->querySingle('select * from sljs where title = "' . $t .'"' , true)) {
	print $r["pagenum"]." ".iconv("UTF-8","GBK",$r["infos"]);
}
else{
	print 0;
}
?>
