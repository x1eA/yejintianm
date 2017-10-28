<?php
header("Content-Type:application/json;charset=UTF-8");
require_once("init.php");
$count=$_REQUEST['count'];
$pid=$_REQUEST['pid'];
$sql="update cs_shopping_cart set sc_count='$count' where sc_pro_id='$pid'";
$result=mysqli_query($conn,$sql);
echo json_encode($result);