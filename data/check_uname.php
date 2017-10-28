<?php
header("Content-Type:text/plain;charset=UTF-8");
require_once("init.php");
@$uname=$_REQUEST["uname"];
if($uname){
  $sql="select * from cs_user where uname='$uname'";
  if(count(sql_execute($sql))==0)
    echo "该用户名可用！";
  else
    echo "用户名已存在！";
}