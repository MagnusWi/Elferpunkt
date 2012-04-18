<?php
	echo "
		<table width=100% height=100% border=0 cellspacing=20>
  		<tr>
    		<td valign=top>
    		
					<font color=$color2 face=arial size=5>Registrieren</font>
      		<hr color=$color2>

      		<font size=2 color=$color1 face=arial><br>
					<br>
      		<form action=\"index.php?link=registrate2\" method=post>
        		<table width=400 border=0 cellspacing=0 cellpadding=0>
          		<tr>
            		<td><font color=$color1 face=arial size=2>Nickname:</font></td>
            		<td><font color=$color1 face=arial size=2><input type=text size=20 name=name></font></td>
          		</tr>
              <tr>
            		<td><font color=$color1 face=arial size=2>Email:</font></td>
            		<td><font color=$color1 face=arial size=2><input type=text size=40 name=email></font></td>
         			</tr>
          		<tr>
            		<td><font color=$color1 face=arial size=2>Passwort:</font></td>
            		<td><font color=$color1 face=arial size=2><input type=password size=20 name=password></font></td>
          		</tr>
          		<tr>
            		<td><font color=$color1 face=arial size=2>Passwort bestätigen:</font></td>
            		<td><font color=$color1 face=arial size=2><input type=password size=20 name=passwordconfirm></font></td>
          		</tr>
        		</table>
        		<br>
        		<input type=submit>
      		</form>
      		<br>
      	</font>
    	</td>
  	</tr>
	</table>";
?>
