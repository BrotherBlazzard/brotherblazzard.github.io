<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>Untitled 1</title>
</head>

<body>
<table>
 <tr>
<?php
for (int $i=1; $i<26; ++$i)
{
	if ($i==1 || $i==6 || $i==11 || $i==16 || $i==21)
		echo "</tr><tr><td>" . $i . "</td>";
	else
		echo "<td>".$i."</td>";	
}
?>
 </tr>
</table>
</body>

</html>
