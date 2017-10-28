<?php
header("Content-Type:application/json;charset=UTF-8");
require_once("init.php");
@$pid=$_REQUEST['pid'];
if($pid){
    $sql="delete from cs_shopping_cart where sc_id=$pid";
    $result=mysqli_query($conn,$sql);
    echo json_encode($result."删除成功！");
}else{
    $sql="delete from cs_shopping_cart";
    $esult=mysqli_query($conn,$sql);
    echo json_encode("删除成功！");
}