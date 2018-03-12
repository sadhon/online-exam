<div class="container">
<?php include("top.php"); ?>
<?php
session_start();
extract($_POST);
extract($_SESSION);
include("database.php");
if (isset($_POST['submit'])) {

	mysql_query("delete from mst_useranswer where sess_id='" . session_id() ."'") or die(mysql_error());
	unset($_SESSION['qn']);
	header("Location: welcome_page.php");
	exit;
}
?>
<?php
echo "<h1> Review Test Question</h1>";

if(!isset($_SESSION['qn']))
{
		$_SESSION['qn']=0;
}
else if(isset($_POST['next_question'])) {
	$_SESSION['qn']=$_SESSION['qn']+1;
	
}

$rs=mysql_query("select * from mst_useranswer where sess_id='" . session_id() ."'",$cn) or die(mysql_error());
mysql_data_seek($rs,$_SESSION['qn']);
$row= mysql_fetch_row($rs);
echo "<form name='myfm' method='post' action='review.php'>";
echo "<table width=100%> <tr> <td width=30>&nbsp;<td> <table border=0>";
$n=$_SESSION['qn']+1;
echo "<tR><td><span class=style2>Que ".  $n .": $row[3]</style>";
echo "<tr><td class=".($row[7]==1?'tans':'style8').">$row[4]";
echo "<tr><td class=".($row[7]==2?'tans':'style8').">$row[5]";
echo "<tr><td class=".($row[7]==3?'tans':'style8').">$row[6]";
echo "<tr><td class=".($row[7]==4?'tans':'style8').">$row[7]";
if($_SESSION['qn']<mysql_num_rows($rs)-1)
echo "<tr><td><input type=submit name='next_question' value='Next Question'></form>";
else
echo "<tr><td><input type=submit name='submit' value='Finish'></form>";

echo "</table></table>";
?>
</div>
