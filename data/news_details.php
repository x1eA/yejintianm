<?php
header("Content-Type:application/json;charset=UTF-8");
require_once("init.php");
@$nid=$_REQUEST['nid'];
$sql="select * from cs_news where nid=$nid";
$result=mysqli_query($conn,$sql);
@$rows=mysqli_fetch_assoc($result);
$news=[
    "all"=>null,
    "details"=>null
];
$news["details"]=$rows;
$sql="select nid,nname,show_time from cs_news";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,1);
$news["all"]=$rows;
echo json_encode($news);