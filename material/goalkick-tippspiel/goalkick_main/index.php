<?php
	
	include 'connection.php';
	include 'whoisonline.php';
	
	$fontColor = mysql_fetch_assoc(mysql_query("SELECT Color FROM colors WHERE Description = 'Font'"));
	$color1 = $fontColor[Color];
	$outColor = mysql_fetch_assoc(mysql_query("SELECT Color FROM colors WHERE Description = 'Out'"));
	$color2 = $outColor[Color];
	$backgroundColor = mysql_fetch_assoc(mysql_query("SELECT Color FROM colors WHERE Description = 'Background'"));
	$color3 = $backgroundColor[Color];
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
					-->
				</STYLE>		
			</HEAD>
			<BODY link=$color1 alink=$color1 vlink=$color1 bgcolor=\"#808080\" leftMargin=0 rightMargin=0 topMargin=0 bottomMargin=0>			
				<center>
				<TABLE cellspacing=0 cellpadding=0 width=800 height=600 background=\"images/designs/arena.jpg\" style=\"background-repeat: no-repeat;background-color:#ffffff;height:100%;\">
					<TR height=70> 
						<TD width=213></TD>
						<TD width=400></TD>
						<TD width=190></TD>
					</TR>
					<TR height=75>
						<TD colspan=3><FONT face=\"arial\" size=7 color=\"#FFFFFF\"></FONT></TD>
					<TR height=30>
						<TD></TD>
						<TD></TD>
						<TD Align=right><FONT face=\"arial\" size=2 color=$color3>
							<img src=\"images/icons/whoisonline.gif\" alt=\"Spieler Online\" border=\"0\">&nbsp;$onlineCounter 
							&nbsp;&nbsp;&nbsp;</FONT>
						</TD>
					</TR>
				<TR>
					<TD valign=top>
						<FONT face=\"arial\" size=2 color=$color3>
							<br><br>
							<a class=menu href=\"index.php?link=introduction\">Einführung</a>
							<a class=menu href=\"index.php?link=login\">Login</a>
							<a class=menu href=\"index.php?link=registrate1\">Registrieren</a>
							<br>
							<a class=menu href=\"../goalkick_admin/index.php?\"><img src=\"images/icons/secure.gif\" alt=\"Geschützter Bereich\" border=\"0\">&nbsp;Administration</a>
						</FONT>
					</TD>
					<TD valign=\"top\" colspan=2>";
						if ($_REQUEST[link] == '') { include 'login.php'; }
						else { $link = $_REQUEST[link].".php"; include $link; }
						echo "
					</TD>
				</TR>
			</TABLE>
			</center>
		</BODY>
	</HTML>";
	mysql_close();
?>