<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>

<div id="bloc_central">
    <div id="first_news">
        <a rel="lightbox" href="<?php echo base_url()."images/maphoto.gif";?>"><img src="<?php echo base_url()."images/maphoto.gif";?>" title="news" border="0"/></a>
    </div>
    <div id="first_photos">
<?php 
	if($first_img):
		foreach($first_img as $img):
			echo "<div class='first_photo' style='width:".$img["largeur"]."px'>";
			$segments=array("galerie","output_thumb",$img["nomgal"],$img["cheminphoto"]);
			echo "<a  href='".site_url("galerie/selection/".$img['nomgal'])."' title='".$img["titregal"]."'><img src='".site_url($segments)."' alt='".$img["titrephoto"]."' border='0'/></a>";
				echo "<div class='first_texte'>";
				echo nl2br($img["textegal"]);
				echo "</div>";
				echo "<div class='photo_titre'>";
				echo $img["titregal"];
				echo "</div>";
			echo "</div>";
		endforeach; 
	endif;
?>
	</div>
</div>


