<?php
// header("Content-Type:application/json;charset=UTF-8");
// require_once("init.php");
// $sql="select * from cs_products order by pid asc";
// echo json_encode(sql_execute($sql));

header("Content-Type:application/json;charset=UTF-8");
require_once("init.php");

@$pid=$_REQUEST["pid"];
$sql="SELECT count(*) FROM cs_promise where product_id=$pid";
$output=[
  "recordCount"=>0, //满足条件的总记录数
  "pageSize"=>10,    //每个页大小
  "pageCount"=>0,   //总页数
  "pno"=>1,         //当前数据所有页码
  "data"=>null      //当前页中的数据
];
$output["recordCount"]=
   sql_execute($sql)[0]["count(*)"];
$output["pageCount"]=ceil(
   $output["recordCount"]/$output["pageSize"]
);
$sql="SELECT * FROM cs_promise where product_id=$pid";
$sql="SELECT cs_promise.*, cs_user.uname FROM cs_promise LEFT JOIN cs_user ON product_id = $pid WHERE user_app_id=uid";
@$pno=$_REQUEST["pno"];
if($pno){
  $output["pno"]=$pno;
  $start=$output["pageSize"]*($pno-1);
  $sql=$sql." order by appid desc";
  $sql=$sql." limit $start,".$output["pageSize"];
}
$output["data"]=sql_execute($sql);
echo json_encode($output);
