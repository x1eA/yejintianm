<?php
header("Content-Type:application/json;charset=UTF-8");
require_once("init.php");
session_start();
@$uid=$_SESSION["uid"];
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
@$avatar=$_REQUEST["avatar"];
@$birthday=$_REQUEST["birthday"];
$sql="update cs_user set uname='$uname',upwd='$upwd',avatar='$avatar',birthday='$birthday' where uid=$uid";
$result=mysqli_query($conn,$sql);
if($result==true) {echo '{"code":-1,"msg":"修改成功"}';}
else  {echo '{"code":-1,"msg":"修改错误"}';}