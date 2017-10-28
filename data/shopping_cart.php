<?php
header("Content-Type:application/json;charset=UTF-8");
require_once("init.php");
$products=[
    "all"=>null,
    "rowList"=>0,//数据条数
    "productLists"=>null
];
$sql="select count(*) from cs_shopping_cart";
$result=mysqli_query($conn,$sql);
$products["rowList"]=mysqli_fetch_row($result)[0];
$sql="select * from cs_shopping_cart";
$products["all"]=sql_execute($sql);

$sql="SELECT cs_products.main_title,cs_products.sub_title,cs_products.cuxiao_price,cs_products.picture,cs_products.pid,sc_count FROM cs_shopping_cart LEFT JOIN cs_products ON sc_pro_id=pid";
$products["productLists"]=sql_execute($sql);
echo json_encode($products);