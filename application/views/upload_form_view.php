<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php if (isset($error)) echo $error;?>
<?php
echo "<div class='insert_form'>";

// init valeurs
$attributs = array('class' => 'saisie', 'id' => 'upload_gal');
$reception=$connexion_retour;
$temp="upload des images dans $gal_nom_selected";
//echo form_open($reception, $attributs);
echo form_open_multipart($reception,$attributs);
$attributs = array('id' => '');
echo form_fieldset($temp, $attributs);
 ;?>

<input type="file" name="userfile[]" size="20" class="multi" />
<br /><br />

<input type="submit" value="upload" name="upload"/>

<?php
echo form_fieldset_close();
echo form_close();
echo "</div>";
?>

