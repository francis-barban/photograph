<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div id="bloc_central">

<div id="photos" style="margin:<?php echo $infos_gal->vmargin;?>px <?php echo $infos_gal->hmargin;?>px">
<?php 
	if($photos):
		foreach($photos->result() as $photo):
			//echo "<div class='photo' style='width:".photo->largmin."px'>";
			echo "<div class='photo' style='width:".$photo->largmin."px;margin:".$photo->vmargin_min."px ".$photo->hmargin_min."px;'>";
			if ($user_niveau==1): 	// uniquement les administrateurs 
			?>
                <div class='photo_bloc'>
                    <div class='bouton_modif_photo'>
                        <a href='#' title='modifier la photo <?php echo $photo->nomphoto;?>'>M</a>
                     </div>
                    <div class='bouton_del_photo'>
                        <a href='<?php  echo site_url("galerie/selection/$gal_nom_selected/suppression/$photo->idphoto")?>' title='supprimer la photo <?php echo $photo->nomphoto;?>'>X</a>
                     </div>	
                     <?php
						// formulaire de modification des paramètres photo
						echo "<div class='photo_modif'>";
							$attributs = array('class' => 'modifphoto');
							echo form_open($connexion_retour, $attributs);
							
							$attributs = array('id' => 'photo'.$photo->idphoto);
							echo form_fieldset('modifier', $attributs);
							
							echo form_label('titre', 'titre'.$photo->idphoto);
							
							$attributs = array(
										  'name'        => 'titre',
										  'id'          => 'titre'.$photo->idphoto,
										  'value'       => $photo->titrephoto,
										  'maxlength'   => '100',
										  'size'        => '20',
										  'class'       => 'titre_photo'
										);
							
							echo form_input($attributs);
							echo form_label('ordre', 'ordre'.$photo->idphoto);
							
							$attributs = array(
										  'name'        => 'ordre',
										  'id'          => 'ordre'.$photo->ordrephoto,
										  'value'       => $photo->ordrephoto,
										  'size'        => '3',
										  'class'       => 'ordre_photo'
										);
							
							echo form_input($attributs);
							echo form_hidden("idphoto",$photo->idphoto);
							echo form_submit("modif_photo","ok");
							echo form_fieldset_close();
							echo form_close();
						echo "</div>";
					
					?>

                     
                </div>
			<?php endif;

			
				$path_parts = pathinfo($photo->nomphoto);
				$nom=$path_parts['filename'];
				$ext=$path_parts['extension'];
				$thumb=$nom."_thumb";
				$titre=$photo->titrephoto;
				$rep=$chemin.$photo->chemingal."/";
				//echo "<a rel='lightbox' href='".$rep.$nom.".".$ext."'><img src='".$rep.$thumb.".".$ext."' alt='".$titre."' border='0'/></a>";
				echo "<a rel='lightbox' href='".$rep.$nom.".".$ext."'><img src='".$rep.$thumb.".".$ext."' alt='".$titre."' /></a>";
				echo "<div class='photo_titre'>";
				echo $titre;
				echo "</div>";
			echo "</div>";
		endforeach; 
	endif;
?>
</div>
<div id="texte_gal"><?php echo $infos_gal->textegal;?></div>
</div>


