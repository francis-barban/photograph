<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div id="bloc_central">

<?php
		//echo "<div id='bandeau_page'>Parcours</div>";
		echo "<div id='contenu_page' class='contenu_parcours'>";
		if ($editeur>0)
			{
				echo form_open("/galerie/sauve_page/$gal_nom_selected");
				echo validation_errors('<span class="error">', '</span>');
				echo $this->spaw->show();
				echo "<input type='hidden' value='parcours' name='typepage' id='typepage'/>";
				echo "<input type='submit' value='Sauver' id='save' />";
				echo "</form>";
			}
		else
			{
					echo ($contenu);
			}
		echo "</div>";
?>
</div>


