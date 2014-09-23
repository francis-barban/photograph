		<!-- ui-dialog -->
		<div id="dialog" title="Contact">
			<br/><br/><a href="mailto:thierry@thierrydubreuil.com" title="adresse email">thierry@thierrydubreuil.com</a>
		</div>
    <div id="foot">
	<!-- <p><a href="<?=base_url()?>user_guide/">consultez le Guide Utilisateur</a>.</p>-->
	<h1><?php echo $pied;?></h1>
        <ul id="menu_pied">
            <li <?php if ($page=="liens_view") echo "class='gal_active'"?>><a href="<?php echo site_url("galerie/liens/$gal_nom_selected"); ?>" title="Favoris">Liens</a></li>
           <li <?php if ($page=="parcours_view") echo "class='gal_active'"?>><a href="<?php echo site_url("galerie/parcours/$gal_nom_selected"); ?>" title="Parcours">Parcours</a></li>
            <li <?php if ($page=="news_view") echo "class='gal_active'"?>><a href="<?php echo site_url("galerie/news/$gal_nom_selected"); ?>" title="Actualité">News</a></li>
            <li><a  id="dialog_link" href="<?php echo site_url(); ?>" title="Laisser un message">Contact</a></li>
        </ul>
	</div>
  </div> <!-- fin de global -->
  
<script type="text/javascript">
	var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
	document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<script type="text/javascript">
	try {
	var pageTracker = _gat._getTracker("UA-308209-4");
	pageTracker._trackPageview();
	} catch(err) {}
</script>
</body>
</html>