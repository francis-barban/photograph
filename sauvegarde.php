 <?php 
function mysql_backup($type,$host, $user, $password, $table, $path) {
	global $day;
	if($type == "gz"){
		// Gunzipp Output (.gz)
		$backup = $path.$table.'_'.$day.'.gz';
		exec(
			sprintf(
				'/usr/local/mysql/bin/mysqldump --host=%s --user=%s --password=%s %s --quick --lock-tables --add-drop-table gzip > %s', 
				$host, 
				$user, 
				$password, 
				$table, 
				$backup
			)
		);
	}elseif($type == "sql"){
		// SQL Outout (.sql)
		$backup = $path.$table.'_'.$day.'.sql';
		exec(
			sprintf(
				'/usr/local/mysql/bin/mysqldump --host=%s --user=%s --password=%s %s --quick --lock-tables --add-drop-table > %s', 
				$host, 
				$user, 
				$password, 
				$table, 
				$backup
			)
		);
	}
	return true;
}
 
foreach(array("sheldons_blog","rogers_blog","janes_blog") as $table){
	if(mysql_backup('sql','localhost', 'SQL_Username', 'SQL_Password', $table, '/root/path/to/mysql/data/backups/')){
		echo('Table backed up. <a href="./'.$table.'_'.$day.'.sql">'.$table.'_'.$day.'.sql</a><br />'."\n");
	}else{
		die('Error backing up table.' .$table);
	}
}
?>
