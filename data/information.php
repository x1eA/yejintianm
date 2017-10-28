<?php
header("Content-Type:application/json;charset=UTF-8");
require_once("init.php");
session_start();
@$uid=$_SESSION["uid"];
$information=[
    "user"=>[],
    "address"=>[],
    "avatar_all"=>[]
];

if($uid){
    $sql="select * from cs_user where uid='$uid'";
    $result=mysqli_query($conn,$sql);
    $row=mysqli_fetch_assoc($result);
   $information["user"]=$row;

   $sql="select path from cs_avatar";
   $result=mysqli_query($conn,$sql);
   $rowList=mysqli_fetch_all($result);
   $information["avatar_all"]=$rowList;
    echo json_encode($information);
}
