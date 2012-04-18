<?php

echo "
<table width=100% height=100% border=0 cellspacing=20>
  <tr>
    <td valign=top>

      <font color=$color2 face=arial size=5>Login</font>
      <hr color=$color2>
      
      <font size=2 color=$color1 face=arial><br>
			<br>";
        $sql="SELECT * FROM members WHERE Name = '$_REQUEST[name]'";
        $result=mysql_query($sql);
        $anzahl=mysql_num_rows($result);
        if ($anzahl > 0) { echo "Fehler: Name existiert bereits!<br><br><a href=\"index.php?link=registrate1\">Zurück</a>"; }
        elseif ($_REQUEST[name] === '') { echo "Fehler: Bitte Nickname eingeben!<br><br><a href=\"index.php?link=registrate1\">Zurück</a>"; }
        elseif ($_REQUEST[email] === '' ) { echo "Fehler: Bitte Email angeben!<br><br><a href=\"index.php?link=registrate1\">Zurück</a>"; }
        elseif (!strpos ($_REQUEST[email], "@")) { echo "Fehler: Bitte gültige Email angeben!<br><br><a href=\"index.php?link=registrate1\">Zurück</a>"; }
		elseif (!strpos ($_REQUEST[email], ".")) { echo "Fehler: Bitte gültige Email angeben!<br><br><a href=\"index.php?link=registrate1\">Zurück</a>"; }
		elseif (strlen($_REQUEST[password]) < 4) { echo "Fehler: Bitte Passwort mindestens 4 Zeichen lang wählen!<br><br><a href=\"index.php?link=registrate1\">Zurück</a>"; }
        elseif ($_REQUEST[password] !== $_REQUEST[passwordconfirm]) { echo "Fehler: Zwei verschiedene Passwörter eingegeben!<br><br><a href=\"index.php?link=registrate1\">Zurück</a>"; }
        else {
          $password = bin2hex($_REQUEST[password]);
          $eintrag = "INSERT INTO members (Name, Email, Password) VALUES ('$_REQUEST[name]', '$_REQUEST[email]', '$password')";
          mysql_query($eintrag);
          
          // Bereits ein Eintrag in die Highscore-Tabelle machen, damit der neue Member dort sofort angezeigt wird und
					// nicht erst warten muss (und verwirrt ist), bis der Administrator ein Ranking-Update durchgeführt hat.
          $rowMember=mysql_fetch_assoc(mysql_query("SELECT ID FROM members WHERE Name = '$_REQUEST[name]' AND Password = '$password'"));
        	$eintrag = "INSERT INTO statistic_highscore (MemberID, Value) VALUES ('$rowMember[ID]', '0')";
          mysql_query($eintrag);
          
          echo "Erfolgreich registriert!<br><br><a href=\"index.php?link=login\">Login</a>";
        }
		echo "
      </font>
    </td>
  </tr>
</table>";

?>
