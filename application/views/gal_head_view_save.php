<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $titre;?></title>
<meta name="description" content="Une Gallerie de photos de Thierry Dubreuil - <?php echo $infos_gal->titregal;?> - <?php if($infos_gal->textegal!="") echo strip_tags($infos_gal->textegal);
else echo $defaut_description;?>"/>
<meta name="msnbot" content="NOODP" />
<meta name="robots" content="NOODP" />

<link rel="shortcut icon" href="<?php echo base_url(); ?>images/images/favicon.ico" />
<link rel="icon" type="image/x-icon" href="<?php echo base_url(); ?>images/images/favicon.ico" />
<link rel="icon" type="image/png" href="<?php echo base_url(); ?>images/images/favicon.png" />

<link href="<? echo base_url();?>styles/stylecss.css" rel="stylesheet" type="text/css" media="all" />
<link href="<? echo base_url();?>styles/jquery.lightbox-0.5.css" rel="stylesheet" type="text/css" media="screen" />
<link href="<? echo base_url();?>styles/smoothness/jquery-ui-1.7.2.custom.css" rel="stylesheet" type="text/css" />	

<script src="<?php echo base_url(); ?>js/jquery-1.3.2.min.js" type="text/javascript"></script> 
<script src="<?php echo base_url(); ?>js/jquery.MultiFile.min.js" type="text/javascript"></script> 
<script src="<?php echo base_url(); ?>js/jquery.lightbox-0.5.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>js/jquery-ui-1.7.2.custom.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?= base_url()?>js/blog_scripts.js"></script>

</head>
<body>
<div id="global">
<?php
	//include(APPPATH.'includes/connexion_form.inc.php');
	echo $connexion_form;		// formulaire d'ifentification
	if ($user_niveau==1):  // uniquement les administrateurs 
		/*include(APPPATH.'includes/new_gal_form.inc.php');
		include(APPPATH.'includes/modif_gal_form.inc.php');
		include(APPPATH.'includes/upload_form.inc.php');*/
		echo $new_gal_form;
		echo $modif_gal_form;
		echo $upload_form;
		echo "<div id='areysure'>
			<p><span class='ui-icon ui-icon-alert' style='margin: 0pt 7px 20px 0pt; float: left;'></span>La galerie <span class='insertion'></span> sera définitivement effacée.<br/><br/>Are you sure?</p>
			</div>";
		echo "<div id='areysurephoto'>
			<p><span class='ui-icon ui-icon-alert' style='margin: 0pt 7px 20px 0pt; float: left;'></span>Etes vous sur de vouloir <span class='insertion'></span>?<br /></p>
			</div>";
	endif; 
?>

        <div id="erreur"><?php echo $erreur;?></div>
    <div id="entete_blog">
            <?php if ($user_niveau==1):?> <!-- uniquement les administrateurs -->
                <div class='insert_bloc'>
                <div class='bouton_new_gal'><a href='#' title="ajouter une galerie">+</a></div>
                <div class='bouton_modif_gal'><a href='<?php echo site_url("galerie/selection/$gal_nom_selected/modif");?>' title='modifier la galerie - <?php echo $gal_selected;?>'>M</a></div>
                <div class='bouton_del_gal'><a href='<?php  echo site_url("galerie/selection/$gal_nom_selected/del")?>' title='supprimer la galerie - <?php echo $gal_selected;?>'>X</a></div>
                <div class='bouton_upload_gal'><a href='#' title='upload images dans <?php echo $gal_selected;?>'>U</a></div>
                </div>
            <?php endif; ?>
    
            <div id="entete"><a href="<?php echo site_url(); ?>" title="retour home"><img src="<?php echo base_url()."images/images/".$entete; ?>" alt=""/></a></div>
            <ul id="galeries">
            <?php 
                if($galeries):
                foreach($galeries->result() as $galerie):
                    $active="";
                    if ($galerie->idgal == $gal_selected)
						{
							$active=" gal_active ";
							if ($infos_gal->textegal!="") $active.=$gal_active_texte;	// active affiche texte sur hover
						} 
                    echo "<li class='galerie$active'><a href='".site_url("galerie/selection/$galerie->chemingal")."' title='".$galerie->titregal."'>".$galerie->titregal."</a></li>";
                endforeach; 
                endif;
            ?>
            </ul>
    </div>
