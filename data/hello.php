<?php
header("Content-Type:application/json;charset=UTF-8");
require_once("init.php");
session_start();
@$uid=$_SESSION["uid"];
if($uid){
    $sql="select * from cs_user where uid='$uid'";
    $result=mysqli_query($conn,$sql);
    $row=mysqli_fetch_assoc($result);
    if($row==null){
        echo '{"code":-1,"msg":"用户名或密码不确"}';
    }else{
        $uid = $row["uid"];
        echo json_encode($row);
    }
}else
  echo '{"code":-1,"msg":"用户名或密码不确"}';


