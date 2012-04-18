<?php

echo "
<table width=100% height=100% border=0 cellspacing=15>
  <tr>
    <td valign=top>
    
      <font color=$color2 face=arial size=5>Regeln</font>
      <hr color=$color2>
      
      <font size=2 color=$color1 face=arial><br>
			<br>          
      		<b>Allgemeines zum Tippen:</b><br>
      		<br>
      		Spiele-Tipps können bis zum <b>jeweiligen Spielbeginn</b> abgegeben werden und
			die speziellen Tipps bis zur angegebenen Deadline (!!).<br>
			Alle Tipps können auch nach dem Speichern wieder <b>beliebig oft geändert</b> werden.
      		Es muss also nicht sofort überall einen Tipp reingeschrieben werden.<br>
			Falls versäumt wurde, einen Tipp rechtzeitig abzugeben, gibts dort einfach keine Punkte.<br>
			<br>
          
            <b>Sieger:</b><br>
            <br>
            Die Punkte im Ranking setzen sich aus den erzielten Punkten bei den Matchtipps,
            sowie den Punkten aus den richtig beantworteten Fragen bei den speziellen Tipps zusammen.
            Sieger ist, wer am Ende der Weltmeisterschaft am meisten Punkte hat.
            Der Sieger bekommt von jedem Mitspieler, der am Ende in schwarzer Schrift im Ranking erscheint (> Rang 3),
            etwas spendiert. Zum Beispiel ein Bier, einen Drink, Taxifahrt, eine Pizza, Eintritt in einen Club.
            Bei Nichteinhalten dieser freundschaftlichen Geste hat der Verlierer in ewiger Scham und Hässlichkeit zu leben.<br>
            <br>
            
            <b>Punkteverteilung pro Match:</b><br>
            <br>
			<table border=0 cellspacing=1 cellpadding=0 width=100%>
  				<tr>
    				<td width=450><font size=2 color=$color1 face=arial>Sieg, Niederlage oder Unentschieden richtig getippt:</td>
    				<td align=right valign=top><font size=2 color=$color1 face=arial>10 Punkte</td>
  				</tr>
 				<tr>
  					<td height=1 colspan=2 bgcolor=$color1></td>
  				</tr>
  				<tr>
    				<td><font size=2 color=$color1 face=arial>Die Tordifferenz richtig getippt:</td>
    				<td align=right><font size=2 color=$color1 face=arial>6 Punkte</td>
  				</tr>
  				<tr>
  					<td height=1 colspan=2 bgcolor=$color1></td>
  				</tr>
  				<tr>
    				<td><font size=2 color=$color1 face=arial>Summe der geschossenen Tore von Team A richtig getippt:</td>
    				<td align=right><font size=2 color=$color1 face=arial>6 Punkte</td>
  				</tr>
    			<tr>
  					<td height=1 colspan=2 bgcolor=$color1></td>
  				</tr>
  				<tr>
    				<td><font size=2 color=$color1 face=arial>Summe der geschossenen Tore von Team B richtig getippt:</td>
    				<td align=right><font size=2 color=$color1 face=arial>6 Punkte</td>
  				</tr>
  				<tr>
  					<td height=1 colspan=2 bgcolor=$color1></td>
  				</tr>
  				<tr>
    				<td><font size=2 color=$color1 face=arial>Summe aller geschossenen Tore richtig getippt:</td>
    				<td align=right><font size=2 color=$color1 face=arial>4 Punkte</td>
  				</tr>
  				<tr>
  					<td height=1 colspan=2 bgcolor=$color1></td>
  				</tr>
  				<tr>
    				<td><font size=2 color=$color1 face=arial>Getipptes Tor von Team A ist tatsächlich geschossen worden: (je Goal)</td>
    				<td align=right><font size=2 color=$color1 face=arial>2 Punkte</td>
  				</tr>
  				<tr>
  					<td height=1 colspan=2 bgcolor=$color1></td>
  				</tr>
  				<tr>
    				<td><font size=2 color=$color1 face=arial>Getipptes Tor von Team B ist tatsächlich geschossen worden: (je Goal)</td>
    				<td align=right><font size=2 color=$color1 face=arial>2 Punkte</td>
  				</tr>
  				<tr>
  					<td height=1 colspan=2 bgcolor=$color1></td>
  				</tr>
  				<tr>
    				<td><font size=2 color=$color1 face=arial>Getipptes Tor von Team A ist nicht geschossen worden: (je Goal)</td>
    				<td align=right><font size=2 color=$color1 face=arial>-1 Punkt</td>
  				</tr>
  				<tr>
  					<td height=1 colspan=2 bgcolor=$color1></td>
  				</tr>
  				<tr>
    				<td><font size=2 color=$color1 face=arial>Getipptes Tor von Team B ist nicht geschossen worden: (je Goal)</td>
    				<td align=right><font size=2 color=$color1 face=arial>-1 Punkt</td>
  				</tr>
			</table>
			<br>
			
			<ol>
				<li>Alle oben zutreffenden Aussagen ergeben aufaddiert die geholte Punktzahl des Tipps.</li>
				<li>Falls die Punktzahl negativ werden würde, wird sie auf Null gesetzt.</li>
				<li>Der Administrator kann bei ausgewählten Spielen die Punktzahl um einen beliebigen Faktor erhöhen. Der Faktor ist bei diesen Spielen angegeben.</li>
				<li>Die ersten 5 Aussagen unterliegen einer für jede Aussage separat berechneten Quote, mit der die geholten Punkte dieser Aussage multipliziert werden. Sie liegt zwischen 0.5 und 2 und ist abhängig davon, wie viele Tipper Dank der Aussage Punkte bekommen.</li>
				<li>Die aufgrund von 3. und 4. entstehenden Kommastellen werden immer aufgerundet.</li>
				<li>Bei den Finalrundenspielen wird das Resultat nach maximal 120 Minuten gewertet, d.h. ohne etwaiges Penaltyschiessen.</li>
			</ol>
			
			Tipp:<br>
			Ein höherer Tipp wird besser belohnt (oben leicht erkennbar).<br>
			<br>

			<b>Rechtliches:</b><br>
            <ul>
            	<li>Das Tippspiel ist ein rein privates Spiel.</li>
            	<li>Als Tippspiel-Organisator ziehe ich keinen finanziellen Gewinn daraus.</li>
            	<li>Ich behalte mir vor, jederzeit das Spiel abzubrechen, wenn es aus unvorhergesehenen Gründen nicht mehr möglich ist, das Spiel unter fairen Bedingungen weiterzuführen.</li>
            	<li>Interessierte Spieler, welche ich nicht persönlich kenne, sollen sich nach der Registration bei mir per eMail melden, und mir mitteilen, durch wen sie auf das Tippspiel gestossen sind, damit ich weiss, mit wem ich es zu tun habe.</li>
				<li>Bei Streitfall über Siegprämie habe ich das letzte Wort.</li>
            </ul>
      	</font>
    </td>
  </tr>
</table>";

?>
