<?php
header("Content-Type:application/json;charset=UTF-8");
require_once("init.php");
session_start();
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
$sql="select * from cs_user where uname='$uname' and upwd='$upwd'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);

 if($row==null){
   echo '{"code":-1,"msg":"用户名或密码不确"}';
 }else{
  $uid = $row["uid"];
 }
@$_SESSION["uid"]=$uid;
//echo $_SESSION["uid"];

