<?php
// formulaire d'identification
echo "<div class='connexion_bloc'>";
//echo "<div><a href='".site_url("galerie/deconnexion")."' class='".$connexion_classe."'>".$connexion_texte."</a></div>";
echo "<div><a href='".site_url("galerie/deconnexion")."' class='".$connexion_classe."'></a></div>";

$attributs = array('class' => 'identif', 'id' => 'identif');
echo form_open("galerie/connexion", $attributs);

$attributs = array('id' => 'identification');
echo form_fieldset('identification', $attributs);

echo form_label('login', 'login');

$attributs = array(
              'name'        => 'login',
              'id'          => 'login',
              'value'       => '',
              'maxlength'   => '15',
              'size'        => '15',
              'class'       => 'log_input'
            );

echo form_input($attributs);

echo form_label('password', 'pass');
$attributs = array(
              'name'        => 'pass',
              'id'          => 'pass',
              'value'       => '',
              'maxlength'   => '15',
              'size'        => '15',
              'class'       => 'log_input'
            );

echo form_password($attributs);


echo form_submit("valide","ok");


echo form_hidden("retour",$connexion_retour);

echo form_fieldset_close();
echo form_close();
echo "</div>";

?>
