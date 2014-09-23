<?php
// formulaire nouvel entry

echo "<div class='insert_form'>";

// init valeurs
$attributs = array('class' => 'saisie', 'id' => 'new_gal');
$reception=$connexion_retour;
$temp="nouvelle galerie";
echo form_open($reception, $attributs);
$attributs = array('id' => '');
echo form_fieldset($temp, $attributs);
?>

        <label for="titregal">titre</label>
        <?php echo form_error('titregal'); ?>
		<input id="titregal" type="text" name="titregal" value="<?php echo set_value('titregal',""); ?>"  />
        <label for="chemingal">dossier<span class="required">*</span></label>
        <?php echo form_error('chemingal'); ?>
        <input id="chemingal" type="text" name="chemingal" value="<?php echo set_value('chemingal',""); ?>"  />
        <label for="textegaln">texte</label>
        <?php echo form_error('textegal'); //echo $contenu;?>
        <!--<input id="textegal" type="text" name="textegal" value="<?php echo set_value('textegal',""); ?>"  />-->
        <textarea id="textegal" name="textegal" wrap="hard" cols="50" rows="3"><?php echo set_value('textegal',""); ?></textarea>
        <label for="larg">larg</label>
        <?php echo form_error('larg'); ?>
        <input id="larg" type="text" name="larg" value="<?php echo set_value('larg',0); ?>"  />
        <label for="haut">haut</label>
        <?php echo form_error('haut'); ?>
        <input id="haut" type="text" name="haut" value="<?php echo set_value('haut',0); ?>"  />
        <label for="largmin">largmin</label>
        <?php echo form_error('largmin'); ?>
        <input id="largmin" type="text" name="largmin" value="<?php echo set_value('largmin',0); ?>"  />
        <label for="hautmin">hautmin</label>
        <?php echo form_error('hautmin'); ?>
        <input id="hautmin" type="text" name="hautmin" value="<?php echo set_value('hautmin',0); ?>"  />

        <label for="hmargin">marge horz</label>
        <?php echo form_error('hmargin'); ?>
        <input id="hmargin" type="text" name="hmargin" value="<?php echo set_value('hmargin',0); ?>"  />
        <label for="vmargin">marge vert</label>
        <?php echo form_error('vmargin'); ?>
        <input id="vmargin" type="text" name="vmargin" value="<?php echo set_value('vmargin',0); ?>"  />

        <label for="hmargin_min">marge photos horz</label>
        <?php echo form_error('hmargin'); ?>
        <input id="hmargin_min" type="text" name="hmargin_min" value="<?php echo set_value('hmargin_min',0); ?>"  />
        <label for="vmargin_min">marge photos vert</label>
        <?php echo form_error('vmargin_min'); ?>
        <input id="vmargin_min" type="text" name="vmargin_min" value="<?php echo set_value('vmargin_min',0); ?>"  />



        <label for="ordregal">ordregal</label>
        <?php echo form_error('ordregal'); ?>
        <input id="ordregal" type="text" name="ordregal" value="<?php echo set_value('ordregal',100); ?>"  />
         <label for="">publier</label>
       <?php echo form_error('publier'); ?>
        
        <?php // Change the values/css classes to suit your needs ?>
        <label for="publier1">oui</label>
        <input type="radio" id="publier1" name="publier" value="1" class="" <?php echo set_radio('publier', '1', false); ?> /> 
        <label for="publier0">non</label>
         <input type="radio" id="publier0" name="publier" value="0" class="" <?php echo set_radio('publier', '0',true); ?> /> 
       <br/><?php echo form_submit("new_gal","ok"); ?>
<?php
echo form_hidden("retour",$connexion_retour);
//echo form_hidden("idgal",$idgal);
?>
<input id="idgal" type="hidden" name="idgal" value="" />
<?php
echo form_fieldset_close();
echo form_close();
echo "</div>";
?>
