	<div class="container">
		<?php include("top.php"); ?>
		<div class="subject">
			<h2>Select Subject !</h2>
			<?php
				include("database.php");
				$query=mysql_query("select * from mst_subject");
				while($row=mysql_fetch_row($query))
				{
					echo "<tr><td align=center ><a href=showtest.php?subid=$row[0] style = 'color:#434343;'><font size=4>$row[1]</font></a>"."<br/>";
				}
				echo "</table>";
			?>
		<?php //include("footer.php") ?>
	</div>
