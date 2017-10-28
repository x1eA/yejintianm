<?php
header("Content-Type:application/json;charset=UTF-8");
require_once("init.php");
@$pid=$_REQUEST['pid'];
if(!$pid) $pid=1;
$products=[
    "details"=>[],
    "family"=>[]
];
$sql="select * from cs_products where pid=$pid";
$products["details"]=sql_execute($sql)[0];

$sql="select sm,md,lg from cs_products_pic where pic_id=$pid";
$arr=sql_execute($sql);
$pic=[];
for($i=0;$i<count($arr);$i++){
    $pic[]=$arr[$i]["sm"];
    $pic[]=$arr[$i]["md"];
    $pic[]=$arr[$i]["lg"];
}
$products["details"]["picList"]=$pic;
echo json_encode($products);