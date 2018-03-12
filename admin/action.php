<?php
session_start();
require("../database.php");
error_reporting(1);
?>
<?php include("header.php"); ?>	

<?php
	$serial = 1;
	$query=mysql_query("select * from mst_subject");
	while($row=mysql_fetch_row($query))
	{
?>

<table border="1" width="60%">
	
	<tr>
		<td>Serial</td>
		<td>Subject</td>
		<td>Update</td>
		<td>Delete</td>
	</tr>
	<tr>
		<td><?php echo $serial++; ?></td>
		<td><?php echo $row[1];?></td>
		<td><a href="update.php?subid=<?php echo $row[0];?>">Update</a></td>
		<td><a href="delete.php?subid=<?php echo $row[0];?>">Delete</a></td>
	</tr>



</table>

<?php	}
?>