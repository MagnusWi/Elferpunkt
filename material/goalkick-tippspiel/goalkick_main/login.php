<?php

echo "
<table width=100% height=100% border=0 cellspacing=20>
  <tr>
    <td valign=top>

      
      <font color=$color2 face=arial size=5>Login</font>
      <hr color=$color2>
      
			<font size=2 color=$color1 face=arial><br>
			<br>
    
			<table border=0 cellspacing=0 cellpadding=0>
				<tr>
					<td valign=top>
						<form action=frame.php method=post>
        			<table width=320 border=0 cellspacing=0 cellpadding=0>
          			<tr>
            			<td><font color=$color1 face=arial size=2>Name:</font></td>
            			<td><font color=$color1 face=arial size=2><input type=text name=name></font></td>
          			</tr>
          			<tr>
            			<td><font color=$color1 face=arial size=2>Passwort:</font></td>
            			<td><font color=$color1 face=arial size=2><input type=password name=password></font></td>
          			</tr>
        			</table>
        			<br>
        			<input type=hidden name=type value=login>
        			<input type=submit value=Login>
        			<br>
      			</form>
      			<font color=$color1 face=arial size=2>Bitte Gross-/Kleinschreibung beachten.<br>
      			Cookies müssen erlaubt sein.<br></font>
      		</td>
      		<td valign=top>";
      

     				$sql="SELECT members.Name AS Name, statistic_highscore.Value AS Score FROM members JOIN statistic_highscore ON (members.ID = statistic_highscore.MemberID) WHERE statistic_highscore.Value > 0 ORDER BY Value DESC, Name ASC LIMIT 10";
          	$result=mysql_query($sql);
          	$anzahl=mysql_num_rows($result);
          	
          	$rank=0;
          	$i=0; // Variable, die zu zählen beginnt, wenn mehrere den gleichen Platz haben.         
          	$scoreabove=-1;
						if ($anzahl > 0) {
          	echo "
						<table border=0 cellspacing=0 cellpadding=0>
							<tr>
								<td colspan=3><font size=2 color=$color1 face=arial><b>Top Ten:</b><br><br></font></td>
							<tr>";
          		while ($row=mysql_fetch_assoc($result)) {      
            		if ($scoreabove != $row[Score]) {
									$rank = $rank + $i + 1;
									$i=0;
								}
            		else {
									$i++;
								}
            		if ($rank == 1) {$size=3; $color="#CC9900";}
            		elseif ($rank == 2) {$size=3; $color="#999999";}
            		elseif ($rank == 3) {$size=3; $color="#990000";}
            		else {$size=2; $color=$color1;}
            		echo "
              		<tr>
                		<td align=right><font size=$size color=$color face=arial><b>";
            		if ($scoreabove != $row[Score]) {echo "$rank.&nbsp;";}
            		echo"
                			</b></font></td>
                		<td width=150><font size=$size color=$color face=arial>$row[Name]</font></td>
                		<td width=50 align=right><font size=$size color=$color>$row[Score]</font></td>
              		</tr>
              		<tr>
                		<td height=1 bgcolor=$color1 colspan=3></td>
              		</tr>";
            		$scoreabove=$row[Score];
          		}
          	echo "</table>";
          	}
      		echo "</td>
				</tr>
      </table>	
    </td>
  </tr>
</table>";

?>
