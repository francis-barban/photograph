<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="utf-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>page Blog</title>

<link href="<? echo base_url();?>styles/stylecss.css" rel="stylesheet" type="text/css" media="all" />
<link href="<? echo base_url();?>styles/jquery.lightbox-0.5.css" rel="stylesheet" type="text/css" media="screen" />
<link href="<? echo base_url();?>styles/smoothness/jquery-ui-1.7.2.custom.css" rel="stylesheet" type="text/css" />	

<script src="<?php echo base_url(); ?>js/jquery-1.3.2.min.js" type="text/javascript" language="javascript"></script> 
<script src="<?php echo base_url(); ?>js/jquery.MultiFile.min.js" type="text/javascript" language="javascript"></script> 
<script src="<?php echo base_url(); ?>js/jquery.lightbox-0.5.js" type="text/javascript" language="javascript"></script>
<script src="<?php echo base_url(); ?>js/jquery-ui-1.7.2.custom.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?= base_url()?>js/blog_scripts.js" language="javascript"></script>

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
	endif; 
?>

        <div id="erreur"><?php echo $erreur;?></div>
    <div id="entete_blog">
            <?php if ($user_niveau==1):?> <!-- uniquement les administrateurs -->
                <div class='insert_bloc'>
                </div>
            <?php endif; ?>
    
            <div id="entete"><a href="<?php echo site_url(); ?>" title="retour home"><img src="<?php echo base_url()."images/images/".$entete; ?>" alt=""/></a></div>
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
    </div>
