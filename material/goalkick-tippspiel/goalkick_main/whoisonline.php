<?php 

/*******************************************\
|  Source code obfuscated  by Code Eclipse  |
|        http://www.codeeclipse.com/        |
| Complete protection, total compatibility! |
\*******************************************/

 $x0b="da\x74\x65"; $x0c="\155y\163\161\154_\x66\145tc\150\x5f\141ss\x6f\143"; $x0d="m\x79\163q\x6c\x5f\x71u\x65r\x79"; $x0e="\163\x65\x74c\157\x6f\x6bi\x65"; $x0f="\x74ime"; 
$minuten=30; $timestamp = $x0f();$timeOld = $x0b("Y-\155\x2dd\x20H:\x69\x3as",$timestamp-$minuten*60);$sql = $x0d("\x53E\114E\103\x54\x20\052\040\106\x52O\x4d\040m\x65m\x62\145rs");$onlineCounter=0;while ($row=$x0c($sql)) { if (($row[Name] == $_COOKIE[MemberName] AND $row[ID] == $_COOKIE[MemberID] AND $row[Password] == $_COOKIE[MemberPassword]) OR $row[Name] == $_REQUEST[name]) {$timeLogout = $x0b("\131\x2d\x6d\x2d\144 H\072\151\x3a\x73",$timestamp-($minuten+2)*60);$timeNow = $x0b("\x59\x2d\x6d\x2dd\x20H\072\151\x3a\163",$timestamp);if ($_REQUEST[mode]=="o\x75t") { $aendern = "\125\120\104\x41\124\105 \x6de\155\142\x65r\x73 \x53\x45T\x0d\x0a\x20 \x20   \117\156\154in\x65\123\x69\156\x63\145 \x3d\x20'$timeLogout'\015
   \x20 \040\127\110\105\x52\x45\040\x4ea\155\145\x20= '$row[Name]'\x20\114I\115I\x54 1"; $update = $x0d($aendern); if ($row[OnlineSince] > $timeOld) {$onlineCounter--; } $x0e("M\145\x6d\x62\x65\162\120assw\x6f\162d", '', $timestamp); }elseif ($row[OnlineSince] < $timeOld) {$aendern = "U\x50\104A\x54\105 \x6d\x65\155bers\x20S\x45\124\x0d
 \040\040\x20\x20\040\117n\x6c\x69\156e\123i\156c\x65 =\x20'$timeNow'\015
 \x20 \x20\040\x20\127\x48\105\122\x45\040\x4e\141\155\145\040=\040'$row[Name]'\040L\111\x4d\x49\x54\0401";$update = $x0d($aendern);$onlineCounter++; }} if ($row[OnlineSince] > $timeOld) { $onlineCounter++; }}?>