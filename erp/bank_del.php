<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>财户删除</title>
</head>
<body>
<?php
require_once(dirname(__FILE__)."/include/config_base.php");
require_once(dirname(__FILE__)."/include/config_rglobals.php");
if($id=='')ShowMsg('非法的执行操作','bank.php');
//检测分类的等级
$username=str_replace($cfg_cookie_encode,'',$_COOKIE["VioomaUserID"]);
$dsql=New Dedesql(false);
$query="select * from #@__bank where id='$id'";
$dsql->Setquery($query);
$dsql->Execute();
$rowcount=$dsql->GetTotalRow();
if($rowcount==0) //非法ID
ShowMsg('执行了非法的操作','-1');
else{
 $row=$dsql->GetOne();
 if($row['bank_default']==1){
 ShowMsg('你不能删除的系统默认的账户!','-1');
 exit();}
 $dsql->ExecuteNoneQuery("delete from #@__bank where id='$id'");
 WriteNote('成功删除银行资料(ID为'.$id.')',getdatetimemk(time()),getip(),$username);
 ShowMsg('成功删除公司银行资料','bank.php');
 }
 $dsql->close();
?>
</body>
</html>
