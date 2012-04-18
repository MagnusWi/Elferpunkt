<?php
	include 'connection.php';
	$fontColor = mysql_fetch_assoc(mysql_query("SELECT Color FROM colors WHERE Description = 'Font'"));
	$color1 = $fontColor[Color];
	$adminzoneColor = mysql_fetch_assoc(mysql_query("SELECT Color FROM colors WHERE Description = 'Adminzone'"));
	$color2 = $adminzoneColor[Color];
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
						a.text		   { margin-left:0px; margin-right:0px; margin-bottom:0px;
											text-align:left; border-style:double; border-width:0px; padding:0px;
											text-decoration:none; border-color=white }
						a.text:link    { color:$color1; background-color:transparent; }
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
				<table height=100% width=100% cellpadding=0 cellspacing=0>
					<tr>
						<td valign=top width=250 bgcolor=$color2>
							<img src=\"images/designs/bgadminzone.jpg\" width=250>
							<font size=2 color=$color3 face=arial><br>
								<br>
      							&nbsp;&nbsp;&nbsp;<font size=5 color=$color3 face=arial>Hallo Admin!</font><br>
								<br>
								<a class=menu href=\"index.php?link=admininstructions\">Instruktionen</a>
								<a class=menu href=\"../goalkick_main/index.php\">Logout</a>
								<br>
								<hr size=1 color=$color3>
								&nbsp;&nbsp;&nbsp;<b>Auswerten:</b><br>
								<hr size=1 color=$color3>
								<a class=menu href=\"index.php?link=editmatches1\"><b>0.</b> Resultat(e) eintragen</a>
								<a class=menu href=\"index.php?link=updatetipscorewithquote\"><b>1.</b> Tipps auswerten</a>
								<a class=menu href=\"index.php?link=updatespecialtipscore\"><b>2.</b> Fragen auswerten</a>
								<a class=menu href=\"index.php?link=updateranking\"><b>3.</b> Rangliste berechnen</a>
								<a class=menu href=\"index.php?link=updaterankinghistory\"><b>4.</b> Trend berechnen</a>
								<a class=menu href=\"index.php?link=updatematchrankinghistory\"><b>5.</b> Rankingdiagramm berechnen</a>
								<br>
								<hr size=1 color=$color3>
								&nbsp;&nbsp;&nbsp;<b>Editieren:</b><br>
								<hr size=1 color=$color3>
								<a class=menu href=\"index.php?link=editmatches1\">Spiele</a>
								<a class=menu href=\"index.php?link=editquestions1\">Fragen</a>
								<a class=menu href=\"index.php?link=editmembers\">Mitglieder</a>
							    <a class=menu href=\"index.php?link=editcolors\">Farben</a>
								<br>															
      				        </font>
						</td>
						<td>";
							if ($_REQUEST[link] == '') { 
								include 'admininstructions.php';
							}
							else {
								$link = $_REQUEST[link].".php"; 
								include $link;
							}
							echo "
						</td>
					</tr>
				</table>
			</BODY>
		</HTML>";
	mysql_close();
?>