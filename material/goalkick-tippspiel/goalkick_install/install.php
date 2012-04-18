<?php
	include 'connection.php';

	echo "
		<table width=100% height=100% border=0 cellspacing=15>
  		<tr>
    		<td valign=top>
     			<font color=#669966 face=arial size=5>Goalkick Datenbank Installation</font>
     			<hr color=#669966>  
      		<font size=2 color=#000000 face=arial><br><br>"; 
   
	if(mysql_install_db($datenbankname, "goalkick.sql", $errmsg)) 
		{ 
   		echo "<b>Success! Datenbank $datenbankname erfolgreich installiert!</b> 
	 					<br><br>
	 				Der Eingang zum Spiel ist \"goalkick_main/index.php\".<br><br>
  					Dort kannst du dich (wie jeder normale Spieler) registrieren um mitzuspielen.<br><br>
  					Es gibt dort auch einen geschützten Link für deine Admin-Zone.<br><br>"; 
	}
	else { 
  	echo "<b>Failure:</b> ".$errmsg."<br/>".mysql_error(); 
	} 

	echo "						
      		</font>
    		</td>
  		</tr>
		</table>";
	
	mysql_close();



function mysql_import_file($filename, &$errmsg)
{
   /* Read the file */
   $lines = file($filename);

   if(!$lines)
   {
      $errmsg = "cannot open file $filename";
      return false;
   }

   $scriptfile = false;

   /* Get rid of the comments and form one jumbo line */
   foreach($lines as $line)
   {
      $line = trim($line);

      if(!ereg('^--', $line))
      {
         $scriptfile.=" ".$line;
      }
   }

   if(!$scriptfile)
   {
      $errmsg = "no text found in $filename";
      return false;
   }

   /* Split the jumbo line into smaller lines */

   $queries = explode(';', $scriptfile);

   /* Run each line as a query */

   foreach($queries as $query)
   {
      $query = trim($query);
      if($query == "") { continue; }
      if(!mysql_query($query.';'))
      {
         $errmsg = "query ".$query." failed";
         return false;
      }
   }

   /* All is well */
   return true;
}

function mysql_install_db($dbname, $dbsqlfile, &$errmsg)
{
   $result = true;

   if(!mysql_select_db($dbname))
   {
     $result = mysql_query("CREATE DATABASE $dbname");
     if(!$result)
     {
        $errmsg = "could not create [$dbname] db in mysql";
        return false;
     }
     $result = mysql_select_db($dbname);
   }

   if(!$result)
   {
      $errmsg = "could not select [$dbname] database in mysql";
      return false;
   }

   $result = mysql_import_file($dbsqlfile, $errmsg);

   return $result;
}
?>
