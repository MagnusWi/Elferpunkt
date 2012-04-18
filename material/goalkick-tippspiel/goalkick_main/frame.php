<?php
	
	include 'connection.php';
	include 'whoisonline.php';	
	
	$lifetime = time() + (60*60*24*7); // Cookie 1 Woche gültig
	
	if ($_REQUEST[link] == '') {
	$_REQUEST[password] = bin2hex($_REQUEST[password]);
	$sql="SELECT ID FROM members WHERE Name = '$_REQUEST[name]' AND Password = '$_REQUEST[password]'";
	$result=mysql_query($sql);
  	$anzahl=mysql_num_rows($result);
  	$row=mysql_fetch_assoc($result);
  
	if ($anzahl == 1) {
  	
		setcookie("MemberName", $_REQUEST[name], $lifetime); 
		setcookie("MemberPassword", $_REQUEST[password], $lifetime);
		setcookie("MemberID", $row[ID], $lifetime);	
				
			$_COOKIE[MemberName]=$_REQUEST[name];
			$_COOKIE[MemberPassword]=$_REQUEST[password];
			$_COOKIE[MemberID]=$row[ID];
			}
  	}
  
  	if ($_REQUEST[refresh] == "true") {
  		$metaRefresh = "<meta http-equiv=\"refresh\" content=\"300\";URL=frame.php?link=$_REQUEST[link]\">"; // Chatbox alle 5 Minuten automatisch refreshen.
  	}
  
	$fontColor = mysql_fetch_assoc(mysql_query("SELECT Color FROM colors WHERE Description = 'Font'"));
	$color1 = $fontColor[Color];
	$inColor = mysql_fetch_assoc(mysql_query("SELECT Color FROM colors WHERE Description = 'In'"));
	$color2 = $inColor[Color];
	$backgroundColor = mysql_fetch_assoc(mysql_query("SELECT Color FROM colors WHERE Description = 'Background'"));
	$color3 = $backgroundColor[Color];	
	
	setcookie("FontColor", $fontColor[Color], $lifetime);
	setcookie("InColor", $inColor[Color], $lifetime);	
	setcookie("BackgroundColor", $backgroundColor[Color], $lifetime);		

  	$sql="SELECT * FROM members WHERE Name = '$_COOKIE[MemberName]' AND Password = '$_COOKIE[MemberPassword]'";
  	$result=mysql_query($sql);
  	$anzahl=mysql_num_rows($result);
  
  	if ($anzahl == 1) {
  
	echo "
		<HTML>
			<HEAD>
				<TITLE>
					Tippspiel 2008
				</TITLE>
				<STYLE type=\"text/css\">
					<!--
						a.menu		   { display:block; margin-left:10px; margin-right:10px; margin-bottom:0px;
  														 text-align:left; border-style:double; border-width:0px; padding:2px;
														 text-decoration:none; border-color=white }
						a.menu:link    { color:$color3; background-color:transparent; }
						a.menu:visited { color:$color3; background-color:transparent; }
						a.menu:hover   { color:$color2; background-color:#FFFFFE; }
						a.menu:active  { color:$color2; background-color:#FFFFFE; }
						a.text				 { margin-left:0px; margin-right:0px; margin-bottom:0px;
														 text-align:left; border-style:double; border-width:0px; padding:0px;
														 text-decoration:none; border-color=white }
						a.text:link 	 { color:$color1; background-color:transparent; }
						a.text:visited { color:$color1; background-color:transparent; }
						a.text:hover   { color:$color2; background-color:#FFFFFE; }
						a.text:active  { color:$color2; background-color:#FFFFFE; }
					-->
				</STYLE>
				
				<meta name=\"description\"  lang=\"de\" content=\"Fussballtippspiel 2008\">
				<meta name=\"author\" content=\"Remo Frey\">
				$metaRefresh

			</HEAD>
			<BODY link=$color1 alink=$color1 vlink=$color1 bgcolor=\"#808080\" leftMargin=0 rightMargin=0 topMargin=0 bottomMargin=0>
				<center>
				<TABLE border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"800\" background=\"images/designs/arena.jpg\" style=\"background-repeat: no-repeat;background-color:#ffffff;height:100%;margin:0px;padding:0px;\">
					<TR> 
						<TD width=213><img src=\"images/yt.gif\" height=\"148\" width=\"1\" border=\"0\" alt=\"\"></TD>
						<TD width=287></TD>
						<TD width=300></TD>
					</TR>
					<TR>			
						<TD>&nbsp;</TD>
						<TD>
							<FONT face=\"arial\" size=2 color=$color3>&nbsp;&nbsp;&nbsp;Willkommen $_COOKIE[MemberName]!&nbsp;</FONT>								
						</TD>
						<TD align=\"right\">
							<FONT face=\"arial\" size=2 color=$color3>	
								<a style=\"color:#ffffff;\" class=text href=\"frame.php?link=rules\">&nbsp;Regeln&nbsp;</a>
								<a style=\"color:#ffffff;\" class=text href=\"index.php?link=login&mode=out\">&nbsp;Logout&nbsp;</a>&nbsp;&nbsp;
								<img src=\"images/icons/whoisonline.gif\" alt=\"Spieler Online\" border=\"0\">&nbsp;$onlineCounter 
								&nbsp;&nbsp;&nbsp;
							</FONT>
						</TD>
					</TR>
				<TR>
					<TD valign=top>
						<FONT face=\"arial\" size=2 color=$color3>
							<br><br>
							<a class=menu href=\"frame.php?link=ranking\">Rangliste</a>
							<a class=menu href=\"frame.php?link=tip\">Tippen</a>
      						<a class=menu href=\"frame.php?link=specialtip\">Spezielle Tipps</a>
							<br><br><br><br><br><br>											
						</FONT>
					</TD>
					<TD valign=\"top\" colspan=2 width=587 height=\"100%\">";
						echo("<br><br><font color=\"#ff0000\"><i>Senki: Ich muss sagen ich verstehe die Berechnung teilweise nicht. Ich meine es macht echt keinen Sinn wenn beim Spiel Niederlade-Italien ein 1:2 Tipp hoeher gewertet wird als ein unentschieden. Also ich habe versucht das nachzuvollziehen, aber irgendwie komme ich nicht drauf.. also 4 Punkte dafuer das insgesamt 3 Tore in dem spiel geschossen wurden ist macht ja noch sinn.. also der Punkt -Summe aller geschossenen Tore richtig getippt- aber dann hoerts auch schon auf</i></font>");
						echo("<br>");
						if ($_REQUEST[link] == '') { include 'ranking.php'; }
						else { $link = $_REQUEST[link].".php"; include $link; }
						echo "
					</TD>
				</TR>
			</TABLE>
		</BODY>
	</HTML>";
	}

	else { // Authentisierung gescheitert 
		echo "
		<HTML>
			<HEAD>
				<TITLE>
					Tippspiel 2008
				</TITLE>
				<STYLE type=\"text/css\">
					<!--
						a.text				 { margin-left:0px; margin-right:0px; margin-bottom:0px;
														 text-align:left; border-style:double; border-width:0px; padding:0px;
														 text-decoration:none; border-color=white }
						a.text:link 	 { color:$color1; background-color:transparent; }
						a.text:visited { color:$color1; background-color:transparent; }
						a.text:hover   { color:$color2; background-color:#FFFFFE; }
						a.text:active  { color:$color2; background-color:#FFFFFE; }
					-->
				</STYLE>
				
				<meta name=\"description\"  lang=\"de\" content=\"Fussballtippspiel 2008\">
				<meta name=\"author\" content=\"Remo Frey\">
				$metaRefresh

			</HEAD>
			<BODY link=$color1 alink=$color1 vlink=$color1 bgcolor=$color3 leftMargin=0 rightMargin=0 topMargin=0 bottomMargin=0>			
				<TABLE cellspacing=0 cellpadding=0 width=800 background=\"images/designs/arena.jpg\" style=\"background-repeat: no-repeat;\">
					<TR height=70> 
						<TD width=213></TD>
						<TD width=287></TD>
						<TD width=300></TD>
					</TR>
					<TR height=75>
						<TD colspan=3><FONT face=\"arial\" size=7 color=\"#FFFFFF\"></FONT></TD>
					<TR height=30>			
						<TD>					
						</TD>
						<TD>							
						</TD>
						<TD Align=right><FONT face=\"arial\" size=2 color=$color1>	
							<img src=\"images/icons/whoisonline.gif\" alt=\"Spieler Online\" border=\"0\">&nbsp;$onlineCounter 
							&nbsp;&nbsp;&nbsp;</FONT>
						</TD>
					</TR>
				<TR>
					<TD valign=top height=347>
					</TD>
					<TD valign=\"top\" colspan=2 width=587>
					
						<table width=100% height=100% border=0 cellspacing=15>
  							<tr>
    							<td valign=top>
     								<font color=$color2 face=arial size=5>Zutritt verweigert!</font>
     								<hr color=$color2>  
     								<font size=2 color=$color1 face=arial><br><br>
										<a class=text href=\"index.php?link=login\">Login</a>
      								</font>
    							</td>
 							</tr>
						</table>
						
					</TD>
				</TR>
			</TABLE>
			</center>
		</BODY>
	</HTML>";
			}
						
	mysql_close();
?>