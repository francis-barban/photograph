<?php
// formulaire nouvel entry

echo "<div class='insert_form'>";

// init valeurs
$attributs = array('class' => 'saisie', 'id' => 'modif_gal');
$recup=false;
$reception=$connexion_retour;
$temp="modif galerie $gal_nom_selected";
echo form_open($reception, $attributs);
$attributs = array('id' => '');
echo form_fieldset($temp, $attributs);
?>

        <label for="titregal">titre</label>
        <?php echo form_error('titregal'); ?>
		<input id="titregal" type="text" name="titregal" value="<?php echo set_value('titregal',$infos_gal->titregal); ?>"  />
		<input id="cachetitre" type="hidden"  value="<?php echo set_value('titregal',$infos_gal->titregal); ?>"  />
        <label for="chemingal">dossier <span class="required">*</span></label>
        <?php echo form_error('chemingal'); ?>
        <input id="chemingal" type="text" name="chemingal" value="<?php echo set_value('chemingal',$infos_gal->chemingal); ?>"  />
        <label for="textegalm">texte</label>
        <?php echo form_error('textegal');// echo $this->spaw->show();?>
        <!--<input id="textegal" type="text" name="textegal" value="<?php echo set_value('textegal',$infos_gal->textegal); ?>"  />-->
        <textarea id="textegal" name="textegal" wrap="hard" cols="50" rows="3"><?php echo set_value('textegal',$infos_gal->textegal); ?></textarea>
        <label for="larg">larg</label>
        <?php echo form_error('larg'); ?>
        <input id="larg" type="text" name="larg" value="<?php echo set_value('larg',$infos_gal->larg); ?>"  />
        <label for="haut">haut</label>
        <?php echo form_error('haut'); ?>
        <input id="haut" type="text" name="haut" value="<?php echo set_value('haut',$infos_gal->haut); ?>"  />
        <label for="largmin">largmin</label>
        <?php echo form_error('largmin'); ?>
        <input id="largmin" type="text" name="largmin" value="<?php echo set_value('largmin',$infos_gal->largmin); ?>"  />
        <label for="hautmin">hautmin</label>
        <?php echo form_error('hautmin'); ?>
        <input id="hautmin" type="text" name="hautmin" value="<?php echo set_value('hautmin',$infos_gal->hautmin); ?>"  />


        <label for="hmargin">marge horz</label>
        <?php echo form_error('hmargin'); ?>
        <input id="hmargin" type="text" name="hmargin" value="<?php echo set_value('hmargin',$infos_gal->hmargin); ?>"  />
        <label for="vmargin">marge vert</label>
        <?php echo form_error('vmargin'); ?>
        <input id="vmargin" type="text" name="vmargin" value="<?php echo set_value('vmargin',$infos_gal->vmargin); ?>"  />

        <label for="hmargin_min">marge photos horz</label>
        <?php echo form_error('hmargin'); ?>
        <input id="hmargin_min" type="text" name="hmargin_min" value="<?php echo set_value('hmargin_min',$infos_gal->hmargin_min); ?>"  />
        <label for="vmargin_min">marge photos vert</label>
        <?php echo form_error('vmargin_min'); ?>
        <input id="vmargin_min" type="text" name="vmargin_min" value="<?php echo set_value('vmargin_min',$infos_gal->vmargin_min); ?>"  />

        <label for="ordregal">ordregal</label>
        <?php echo form_error('ordregal'); ?>
        <input id="ordregal" type="text" name="ordregal" value="<?php echo set_value('ordregal',$infos_gal->ordregal); ?>"  />
         <label for="">publier</label>
       <?php echo form_error('publier'); ?>
        
        <?php // Change the values/css classes to suit your needs ?>
        <label for="publier1">oui</label>
        <?php
			$publier1=FALSE;
			$publier0=TRUE;
			if($infos_gal->publier==1)
				{
					$publier1=TRUE;
					$publier0=FALSE;
				}
			if($infos_gal->publier==0)
				{
					$publier1=FALSE;
					$publier0=TRUE;
				}
			
		?>
        <input type="radio" id="publier1" name="publier" value="1" class=""  <?php if($infos_gal->publier==1) echo 'checked="checked"'; ?>/> 
        <label for="publier0">non</label>
         <input type="radio" id="publier0" name="publier" value="0" class=""  <?php if($infos_gal->publier==0) echo 'checked="checked"'; ?>/> 
       <br/><?php echo form_submit("modif_gal","ok"); ?>
<?php
echo form_hidden("retour",$connexion_retour);
//echo form_hidden("idgal",$idgal);
?>
<input id="idgal" type="hidden" name="idgal" value="<?php echo $infos_gal->idgal; ?>" />
<?php
echo form_fieldset_close();
echo form_close();
echo "</div>";
?>
