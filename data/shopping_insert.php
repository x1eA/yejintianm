<?php
header("Content-Type:plain/text;charset=UTF-8");
require_once("init.php");
session_start();
$uid=$_SESSION["uid"];
$pid=$_REQUEST['pid'];
$count=$_REQUEST['count'];
$sql="INSERT INTO `cs_shopping_cart`(`sc_id`, `sc_userid`, `sc_pro_id`, `sc_count`) VALUES (null,$uid,$pid,$count)";
$result=mysqli_query($conn,$sql);
echo ("1");