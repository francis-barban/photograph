<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php //echo $message?>

<ul id="galeries">
<?php 
	if($galeries):
	foreach($galeries->result() as $galerie):
		$active="";
		if ($galerie->idgal == $gal_selected) $active=" gal_active";
		echo "<li class='galerie$active'><a href='".site_url("galerie/selection/$galerie->chemingal")."' title='".$galerie->titregal."'>".$galerie->titregal."</a></li>";
	endforeach; 
	endif;
?>
</ul>


