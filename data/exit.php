<?php
header("Content-Type:application/json;charset=UTF-8");
require_once("init.php");
session_start();
@$_SESSION["uid"]=null;