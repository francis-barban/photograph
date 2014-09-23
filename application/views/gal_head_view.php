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
<!--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>-->
<script src="<?php echo base_url(); ?>js/jquery.MultiFile.min.js" type="text/javascript"></script> 
<script src="<?php echo base_url(); ?>js/jquery.lightbox-0.5.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>js/jquery-ui-1.7.2.custom.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?= base_url()?>js/blog_scripts.js"></script>
<style>
/* GLOBALS */

*,
*:after,
*:before {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}

::selection {
    background: transparent; 
}

::-moz-selection {
    background: transparent; 
}

.wrapper-demo {
    margin: 0px 0 0 0;
    *zoom: 1;
    font-weight: 400;
}

.wrapper-demo:after {
    clear: both;
    content: "";
    display: table;
}
/* DEMO 3 */

.wrapper-dropdown-3 {
    /* Size and position */
    position: absolute;
    width: 352px;
	
    margin: 0 auto;
    padding: 10px 5px;
	right : 10px;
	bottom : 10px;

    /* Styles */
    background: #fff;
    border-radius: 7px;
    border: 1px solid rgba(0,0,0,0.15);
    box-shadow: 0 1px 1px rgba(50,50,50,0.1);
    cursor: pointer;
    outline: none;

    /* Font settings */
    font-weight: bold;
    color: #8AA8BD;
}

.wrapper-dropdown-3 span:after {
    content: "";
    width: 0;
    height: 0;
    position: absolute;
    right: 15px;
    top: 50%;
    margin-top: -3px;
    border-width: 6px 6px 0 6px;
    border-style: solid;
    border-color: #8aa8bd transparent;
}

.wrapper-dropdown-3 .dropdown {
  /* Size & position */
    position: absolute;
    top: 140%;
    left: 0;
    right: 0;

    /* Styles */
    background: white;
    border-radius: inherit;
    border: 1px solid rgba(0,0,0,0.17);
    box-shadow: 0 0 5px rgba(0,0,0,0.1);
    font-weight: normal;
    -webkit-transition: all 0.5s ease-in;
    -moz-transition: all 0.5s ease-in;
    -ms-transition: all 0.5s ease-in;
    -o-transition: all 0.5s ease-in;
    transition: all 0.5s ease-in;
    list-style: none;
	z-index : 100;


    /* Hiding */
    /*opacity: 0;
    pointer-events: none;*/
	display : none;
}

.wrapper-dropdown-3 .dropdown:after {
    content: "";
    width: 0;
    height: 0;
    position: absolute;
    bottom: 100%;
    right: 15px;
    border-width: 0 6px 6px 6px;
    border-style: solid;
    border-color: #fff transparent;    
}

.wrapper-dropdown-3 .dropdown:before {
    content: "";
    width: 0;
    height: 0;
    position: absolute;
    bottom: 100%;
    right: 13px;
    border-width: 0 8px 8px 8px;
    border-style: solid;
    border-color: rgba(0,0,0,0.1) transparent;    
}

.wrapper-dropdown-3 .dropdown li a {
    display: block;
    padding: 10px;
    text-decoration: none;
    color: #8aa8bd;
    border-bottom: 1px solid #e6e8ea;
    box-shadow: inset 0 1px 0 rgba(255,255,255,1);
    -webkit-transition: all 0.3s ease-out;
    -moz-transition: all 0.3s ease-out;
    -ms-transition: all 0.3s ease-out;
    -o-transition: all 0.3s ease-out;
    transition: all 0.3s ease-out;
}

.wrapper-dropdown-3 .dropdown li i {
    float: right;
    color: inherit;
}

.wrapper-dropdown-3 .dropdown li:first-of-type a {
    border-radius: 7px 7px 0 0;
}

.wrapper-dropdown-3 .dropdown li:last-of-type a {
    border: none;
    border-radius: 0 0 7px 7px;
}


/* Hover state */

.wrapper-dropdown-3 .dropdown li:hover a {
    background: #f3f8f8;
}

/* Active state */

.wrapper-dropdown-3.active .dropdown {
    /*opacity: 1;
    pointer-events: auto;*/
	display:block;
}

/* No CSS3 support */

.no-opacity       .wrapper-dropdown-3 .dropdown,
.no-pointerevents .wrapper-dropdown-3 .dropdown {
    /*display: none;*/
    /*opacity: 1;*/ /* If opacity support but no pointer-events support */
   /*pointer-events: auto;*/ /* If pointer-events support but no pointer-events support */
}

.no-opacity       .wrapper-dropdown-3.active .dropdown,
.no-pointerevents .wrapper-dropdown-3.active .dropdown {
    display: block;
}

.wrapper-dropdown-3 span, .wrapper-dropdown-3 span a {
display:block;
}



/*.insert_bloc {
position:absolute;
top : 0px;
right: 0px;
z-index:110;
}*/

</style>
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
            <div class="wrapper-demo">
            <div id="dd" class="wrapper-dropdown-3" tabindex="1">
            
            <?php 
               if($galeries):
			   $span	=	"";
			   $ul		=	"";
               foreach($galeries->result() as $galerie):
                   $active="";
                   if ($galerie->idgal == $gal_selected)
						{
							$active=" gal_active ";
							if ($infos_gal->textegal!="") $active.=$gal_active_texte;	// active affiche texte sur hover
							$span	=	"<span><a href='".site_url("galerie/selection/$galerie->chemingal")."' title='".$galerie->titregal."'>".$galerie->titregal."</a></span>";
							//$span	=	"<span><a title='".$galerie->titregal."'>".$galerie->titregal."</a></span>";
						} 
					else
						{
							$ul	.=	"<li class='galerie$active'><a href='".site_url("galerie/selection/$galerie->chemingal")."' title='".$galerie->titregal."'>".$galerie->titregal."</a></li>";
						}
               endforeach; 
			   		echo	$span;
					echo 	'<ul class="dropdown">';
					echo	$ul;
					echo 	"</ul>";
               endif;
			   
            ?>
            </div>
    		</div>
			</div>
            <!-- jQuery if needed -->
		<script type="text/javascript">
			
		/*	function DropDown(el) {
				this.dd = el;
				this.placeholder = this.dd.children('span');
				this.opts = this.dd.find('ul.dropdown > li');
				this.val = '';
				this.index = -1;
				this.initEvents();
			}
			DropDown.prototype = {
				initEvents : function() {
					var obj = this;

					obj.dd.on('click', function(event){
						$(this).toggleClass('active');
						return false;
					});

					obj.opts.on('click',function(){
						var opt = $(this);
						obj.val = opt.text();
						obj.index = opt.index();
						obj.placeholder.text(obj.val);
					});
				},
				getValue : function() {
					return this.val;
				},
				getIndex : function() {
					return this.index;
				}
			}*/

		</script>