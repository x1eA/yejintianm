<?php
header("Content-Type:application/json;charset=UTF-8");
require_once("init.php");
$uname=$_REQUEST['uname'];
$upwd=$_REQUEST['upwd'];
$avatar=$_REQUEST['avatar'];
$sql="INSERT INTO `cs_user`(`uid`, `uname`, `upwd`, `avatar`, `birthday`) VALUES (null,'$uname','$upwd','$avatar',null)";
$result=mysqli_query($conn,$sql);
echo json_encode($result);