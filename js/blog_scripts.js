// JavaScript Document
//$(document).ready(function(){

var old=null
$(function() {
// gestion bouton connexion
	$("form.identif").hide();
	$("form.modifphoto").hide();

   $("a.connexion").toggle(
	function(event){
	   event.preventDefault();
	   $("form.identif").show("slow");
	 },
	function(event){
	   event.preventDefault();
	   $("form.identif").hide("slow");
	 }
	 );
   $("a.deconnexion").click(function(event){
	   //event.preventDefault();
	   //alert("deconnect")
	   //$("form.identif").submit();
	 });
// gestion texte galerie sur home
   $(".first_photo").mouseover(function(event){
		event.stopPropagation();
	   event.preventDefault();
	   // fin de l'effet précedent sur l'objet précédent
	   if (old) {
			var clearQueue = true;
			var gotoEnd= true;
			$(".first_texte",old).stop(clearQueue , gotoEnd) 
	   }
	   $(".first_texte",this).show("slow");
	   old=this
	   return false
	 }).mouseout(function(event){
		event.stopPropagation();
	   event.preventDefault();
	   if (old) {
			var clearQueue = true;
			var gotoEnd= true;
			$(".first_texte",old).stop(clearQueue , gotoEnd) 
	   }
	   $(".first_texte",this).hide("slow");
	   return false
	 });

// init hide/show formulaire galerie
	$("form#new_gal").hide();
	$("form#upload_gal").hide();
	$("form#upload_gal").hide();

// gestion bouton nouvelle entrée
   $(".insert_bloc .bouton_new_gal a").toggle(
	function(event){
	   event.preventDefault();
	   $("form#new_gal").show("slow");
	 },
	function(event){
	   event.preventDefault();
	   $("form#new_gal").hide("slow");
	 }
	 );  
// gestion bouton modif galerie
   $(".insert_bloc .bouton_modif_gal a").toggle(
	function(event){
	   event.preventDefault();
	   $("form#modif_gal").show("slow");
	   return true
	 },
	function(event){
	   event.preventDefault();
	   $("form#modif_gal").hide("slow");
	 }

	 );  
// gestion bouton upload galerie
   $(".insert_bloc .bouton_upload_gal a").toggle(
	function(event){
	   event.preventDefault();
	   $("form#upload_gal").show("slow");
	   return true
	 },
	function(event){
	   event.preventDefault();
	   $("form#upload_gal").hide("slow");
	 }

	 ); 
// gestion bouton modif photo
   $(".photo_bloc .bouton_modif_photo a").toggle(
	function(event){
	   event.preventDefault();
	   $("form.modifphoto").show("slow");
	   return true
	 },
	function(event){
	   event.preventDefault();
	   $("form.modifphoto").hide("slow");
	 }

	 );  
	// Dialog			
	$('#dialog').dialog({
		autoOpen: false,
		width: 300,
		height: 100
	});
	
// Dialog Link

	$("#dialog_link").toggle(
	function(event){
	   //event.preventDefault();
		$('#dialog').dialog('open');
	   return false
	 },
	function(event){
		$('#dialog').dialog('close');
	   return false
	 }

	 ); 
	
// Dialog Link prompt delete galerie
	
	$('#areysure').dialog({
		autoOpen: false,
		width: 300,
		height: 250,
		modal: true,
		title: "Attention :",
		buttons:
			{ "Non": function() { $(this).dialog("close"); return false},
				"Oui": function() { $(this).dialog("close");window.location.href=$(".bouton_del_gal a").attr("href");}
			  
			}
		});
	

	$(".bouton_del_gal a").click(
	function(event){
	   	event.preventDefault();
		$("#areysure .insertion").html($("input#cachetitre").val());				// ne marche pas car 2xtitregal à corriger
		$('#areysure').dialog('open')
	   return false
	 }
	 ); 
	
// Dialog Link prompt delete photo
	
	$('#areysurephoto').dialog({
		autoOpen: false,
		width: 300,
		height: 250,
		modal: true,
		title: "Attention : ",
		buttons:
			{ "Non": function() { $(this).dialog("close"); return false},
				"Oui": function() { $(this).dialog("close");window.location.href=($(this).dialog('option','url'));}
			  
			}
		});
	

	$(".bouton_del_photo a").click(
	function(event){
	   	event.preventDefault();
		$("#areysurephoto .insertion").html($(this).attr('title'));				// texte supprimer photo xxxxxx
		$("#areysurephoto").dialog('option','url',$(this).attr("href"));				// texte supprimer photo xxxxxx
		$('#areysurephoto').dialog('open')
	   return false
	 }
	 );  
// Dialog Link
/*	$('#dialog_link').click(function(){
		$('#dialog').dialog('open');
		return false;
	});*/

   //lightbox on
   // Use this example, or...
	//$('a[@rel*=lightbox]').lightBox(); // Select all links that contains lightbox in the attribute rel
	$('a[rel=lightbox]').lightBox(); // Select all links that contains lightbox in the attribute rel
	/*$("a").focus(function (e) {
			var $kids = $(e.target).children();
     		$kids.css('border','none').blur();
		});*/
// texte galerie
   $(".gal_active_texte a").toggle(
	function(event){
	   event.preventDefault();
	   $("#texte_gal").show("slow");
	   return true
	 },
	function(event){
	   event.preventDefault();
	   $("#texte_gal").hide("slow");
	 }

	 );  
	$("a").focus(function (e) {
			//				   alert("ok")
			//$(e.target).css('border','5px solid #00FF99') 
			$(e.target).blur() 
			//alert($(e.target).tagName+" "+$(this).tagName)
			$(this).blur()
		});
	/*$("#lightbox-secNav-btnClose").bind("focus",function (e) {
			//				   alert("ok")
			//$(e.target).css('border','5px solid #00FF99') 
			$(e.target).blur() 
			//alert($(e.target).tagName+" "+$(this).tagName)
			$(this).blur()
			//return false
		});
			$('#lightbox-secNav-btnClose').focus(function() {
				$(this).blur();
				return false;
			});*/
	

				//var dd = new DropDown( $('#dd') );

				/*$("#dd").blur(function() {
					// all dropdowns
					$('.wrapper-dropdown-3 .dropdown').hide("slow");
				});*/
			/*$(document).click(function(){
									//e.preventDefault();
									if (visible)  $("#dd span").click();
									});*/
			
			$(".dropdown").mouseleave(function(e){
									//e.preventDefault();
									if (visible)  $("#dd span").click();
									});
			
			   $("#dd span").toggle(
				function(event){
				   //event.preventDefault();
					if (reftimer != null) {
						clearTimeout(reftimer)
						reftimer = null;
					}
					if ($("#photos").length == 0 )
							{
								//alert($("#photos").length);
								event.preventDefault();
								event.stopPropagation();
								//alert($(this).attr("href"));
								window.location.href = $(this).find("a").attr("href");
							}
					else 
							{
								 $('.wrapper-dropdown-3 .dropdown').show("fast");
								 visible = true;
								 reftimer = setTimeout(function(){$("#dd span").click()}, 8000);
							}
			   
				 },
				function(event){
				   //event.preventDefault();
					if (reftimer != null) {
						clearTimeout(reftimer)
						reftimer = null;
					}
					if ($("#photos").length == 0 )
							{
								//alert($("#photos").length);
								event.preventDefault();
								event.stopPropagation();
								//alert($(this).attr("href"));
								window.location.href = $(this).find("a").attr("href");
							}
					else 
							{
							   $('.wrapper-dropdown-3 .dropdown').hide("fast");
							   visible = false;
							}
				 }
				 );
			   
				/*$("#dd span a").click(function(e){
							alert($("#photos").length );
							if ($("#photos").length == 0 ) {
								e.preventDefault();
								e.stopPropagation();
								alert($(this).attr("href"));
								window.location = $(this).attr("href");
							}
						})*/

 });
var visible = false;
var reftimer	=	null;