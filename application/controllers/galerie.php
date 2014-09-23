<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Galerie extends Controller {
    
    function Galerie()
    {
        parent::Controller();
		// les librairies utilisées : 'database','session','image_lib','form_validation' 
		// sont chargée dans config/autoload.php
		
		//$this->output->enable_profiler(TRUE);		// pour debug
		$this->admin=false;
		$this->galerie=0;
		$this->nomgal="";
		$this->modif_gal=0;
		$this->defaut_larg="550";
		$this->defaut_haut="600";
		$this->defaut_larg_min="150";
		$this->defaut_haut_min="200";
		$this->defaut_larg_min_first="200";
		$this->defaut_margin_horz="10";					// marges galerie
		$this->defaut_margin_vert="20";
		$this->defaut_margin_horz_min="10";				// marges photos
		$this->defaut_margin_vert_min="10";
		
		$this->galeries_dir=base_url().'images/galeries/';
		$this->galeries_dir_rel='./images/galeries/';
		$this->defaut_description=' Cette galerie est traversée d&quot;un lien vital, authentique et primitif. Chaque photographie est post traitée içi avec le plus grand respect de la lumière. Le photographe Thierry Dubreuil avec humilité, obstination et sobriété lègue à ces photos l&quot;impudente longévité de leurs modèles';
		
			
    }
	
function index($erreur="")
    {    
		
		$data["erreur"]=$erreur;	
		$data["new_gal_form"]="";	
		$data["modif_gal_form"]="";	
		$data["upload_form"]="";	
		$data["defaut_description"]=$this->defaut_description;	
			
		$data=$this->_process_connect($data);			// à ventiler + tard
		
		//$this->load->model('Gal_model');
		$data=$this->_process_admin($data);
		
		$data["infos_gal"]=array();
		$data["infos_gal"]=$this->Gal_model->get_galerie_infosid($this->galerie);
		
		// les sous view dans head_view
		//$data["connexion_form"]=$this->load->view('connexion_form_view',$data,true);	// formulaire d'identification dans $data
		
		$this->load->view('first_head_view',$data);
    }
	
function test()
	{
		echo CI_VERSION;
		phpinfo();
	}   
function version()
	{
		echo CI_VERSION;
		//phpinfo();
	}   
	
function affiche()
    {    
		$data["page"]="";
		$data["erreur"]="";	
		$data["new_gal_form"]="";	
		$data["modif_gal_form"]="";	
		$data["upload_form"]="";	
		$data["gal_active_texte"]="gal_active_texte";	// affiche texte galerie par défaut
	
		$data=$this->_process_connect($data);			// à ventiler + tard
		
		$data=$this->_process_admin($data);
		
		$data["entete"]="thierry_gal.jpg";
		$data["gal_selected"]=$this->galerie;
		$data["gal_nom_selected"]=$this->nomgal;
		$data["infos_gal"]=array();
		$data["infos_gal"]=$this->Gal_model->get_galerie_infosid($this->galerie);
		
		// les sous view dans head_view
		$data["connexion_form"]=$this->load->view('connexion_form_view',$data,true);	// formulaire d'identification dans $data
		if ($this->session->userdata('niveau')==1)     // uniquement les administrateurs 
			{
				/*$config = array(
					'name'    => 'textegalm',
					'caption' => 'texte galerie',
					'content' => $data["infos_gal"]->textegal
				);
				$this->load->library('spaw', $config);
				$data["contenu"]=$this->spaw->getHtml();*/
				$data["modif_gal_form"]=$this->load->view('modif_gal_form_view',$data,true);	// formulaire modif galerie dans $data
				/*$config=array();
				
				$config = array(
					'name'    => 'textegaln',
					'caption' => 'texte galerie new',
					'content' => "nouvelle gallerie"
				);
				$this->load->library('spaw', $config);
				$data["contenu"]=$this->spaw->getHtml();*/
				$data["new_gal_form"]=$this->load->view('new_gal_form_view',$data,true);	// formulaire nouvelle galerie dans $data
				
				$data["upload_form"]=$this->load->view('upload_form_view',$data,true);	// formulaire d'identification dans $data
			  }
		
		$data["gal_selected"]=$this->galerie;
		$data["message"]=$this->_url_redirect($this->uri->segment_array(),2);
		$data["titre"]="La galerie ".$this->titregal." de Thierry Dubreuil";
		$data["defaut_description"]=$this->defaut_description;	

		$this->load->view('gal_head_view',$data);
		
		$data["photos"]=$this->Gal_model->get_photos($this->galerie);
		$data["chemin"]=$this->galeries_dir;
		$this->load->view('photos_view',$data);
		
		$data["pied"]=" ";
		$this->load->view('gal_foot_view',$data);
    }

function news()
    {  
		$data["editeur"]=0;
		$data["titre"]="Les news de Thierry Dubreuil";
		$data["entete"]="thierry_news.jpg";
		$data["page"]="news_view";
		if ($this->session->userdata('niveau')==1)     // uniquement les administrateurs 
			{
				$config = array(
					'name'    => 'news',
					'caption' => 'News',
					'content' => $this->Editor_model->get_news()
				);
				$this->load->library('spaw', $config);
				//$this->spaw->addTab('liens', 'Liens', $this->Editor_model->get_liens());
				//$this->spaw->addTab('parcours', 'Parcours', $this->Editor_model->get_parcours());
				$data["editeur"]=1;
				$data["contenu"]=$this->Editor_model->get_news();

			  }
		$data["contenu"]=$this->Editor_model->get_news();
		$this->affiche_page("news_view",$data);
		
	}
function liens()
    {    
		$data["editeur"]=0;
		$data["titre"]="Les sites favoris de Thierry Dubreuil";
		$data["entete"]="thierry_liens.jpg";
		$data["page"]="liens_view";
		if ($this->session->userdata('niveau')==1)     // uniquement les administrateurs 
			{
				$config = array(
					'name'    => 'liens',
					'caption' => 'Liens',
					'content' => $this->Editor_model->get_liens()
				);
				$this->load->library('spaw', $config);
				$data["editeur"]=1;
				$data["contenu"]=$this->Editor_model->get_liens();
			  }
		$data["contenu"]=$this->Editor_model->get_liens();
		$this->affiche_page("liens_view",$data);
	}
function parcours()
    {    
		$data["editeur"]=0;
		$data["titre"]="Le parcours de Thierry Dubreuil";
		$data["entete"]="thierry_parcours.jpg";
		$data["page"]="parcours_view";
		if ($this->session->userdata('niveau')==1)     // uniquement les administrateurs 
			{
				$config = array(
					'name'    => 'parcours',
					'caption' => 'Parcours',
					'content' => $this->Editor_model->get_parcours()
				);
				$this->load->library('spaw', $config);
				$data["editeur"]=1;
				$data["contenu"]= $this->Editor_model->get_parcours();
			  }
		$data["contenu"]= $this->Editor_model->get_parcours();
		$this->affiche_page("parcours_view",$data);
	}
	
function affiche_page($page,$data)
	{
		$data["erreur"]="";	
		$data["new_gal_form"]="";	
		$data["modif_gal_form"]="";	
		$data["upload_form"]="";	
		$data["gal_active_texte"]="";
		
		$data=$this->_process_connect($data);			// à ventiler + tard
		$nomgal = $this->uri->segment(3, 0);
		$this->nomgal=$nomgal;
		$idgal = $this->Gal_model->get_galerie_id($nomgal);
		$this->galerie=$idgal;

		$data=$this->_process_admin($data);

		$data["gal_selected"]=$this->galerie;
		$data["gal_nom_selected"]=$this->nomgal;
		$data["infos_gal"]=array();
		$data["infos_gal"]=$this->Gal_model->get_galerie_infosid($this->galerie);
		
		// les sous view dans head_view
		$data["connexion_form"]=$this->load->view('connexion_form_view',$data,true);	// formulaire d'identification dans $data
		$data["new_gal_form"]=$this->load->view('new_gal_form_view',$data,true);	// formulaire d'identification dans $data
		$data["modif_gal_form"]=$this->load->view('modif_gal_form_view',$data,true);	// formulaire d'identification dans $data
		$data["upload_form"]=$this->load->view('upload_form_view',$data,true);	// formulaire d'identification dans $data
		
		//$data["galeries"]=$galeries;
		$data["gal_selected"]=$this->galerie;
		$data["message"]=$this->_url_redirect($this->uri->segment_array(),2);
		$data["defaut_description"]=$this->defaut_description;	
		$this->load->view("gal_head_view",$data);
		
		
		$data["photos"]=$this->Gal_model->get_photos($this->galerie);
		$data["chemin"]=$this->galeries_dir;
		$this->load->view($data["page"],$data);
		
		$data["pied"]=" ";
		$this->load->view('gal_foot_view',$data);
    }
function sauve_page()
	{
			switch ($this->input->post("typepage"))
				{
					case "news":
						$form_data = array(
								'contenu' => $this->input->post("news")
									);
						$this->Editor_model->save_news($form_data);
						break;
					case "liens":
						$form_data = array(
								'contenu' => $this->input->post("liens")
									);
						$this->Editor_model->save_liens($form_data);
						break;
					case "parcours":
						$form_data = array(
								'contenu' => $this->input->post("parcours")
									);
						$this->Editor_model->save_parcours($form_data);
						break;
				}
			redirect(site_url()."/".$this->uri->segment(1)."/".$this->input->post("typepage")."/".$this->uri->segment(3));
			
	}


	
// index admin	
    function admin()
    {    
		$this->admin=true;
		$this->affiche();
    }

// préselection d'une galerie	
    function selection()
    {    
		$nomgal = $this->uri->segment(3, 0);
		$this->nomgal=$nomgal;
		//die($nomgal);
		$idgal = $this->Gal_model->get_galerie_id($nomgal);
		$this->galerie=$idgal;
		$this->affiche();
    }
    function modifier()
    {    
		$nomgal = $this->uri->segment(3, 0);
		$idgal = $this->Gal_model->get_galerie_id($nomgal);
		$this->galerie=$idgal;
		$this->affiche();
    }
	
	function affiche_photos($refgal)
		{
			//$this->load->model('Gal_model');
			$data["photos"]=$this->Gal_model->get_photos($refgal);
			$this->load->view('photos_view',$data);
		}
	
	function creer_thumb($dir,$nom,$ligne,$ext_thumb="_thumb")
		{
				//$ext_thumb="_thumb";
				$mime=get_mime_by_extension($dir.$nom);
				$pos = stripos($mime, "image");
				//die("mime = ".$mime);
				$pos1= stripos($nom, "thumb");
				//test si image existe déjà
				$path_parts = pathinfo($nom);
				$filename=$path_parts['filename'].$ext_thumb.".".$path_parts['extension'];
				if ($pos !== false && $pos1===false && !file_exists($dir.$filename))
				{
	
					 
					//$ligne=$this->Gal_model->get_galerie_infosid($refgal);
					$config['image_library'] = 'gd2';
					$config['source_image'] = $dir.$nom;
					$config['create_thumb'] = TRUE;
					$config['maintain_ratio'] = TRUE;
					$config['width'] = $ligne->largmin;
					$config['height'] = $ligne->hautmin;
					$config['quality'] = "100";
					$config['thumb_marker'] = $ext_thumb;
					$config['master_dim'] = "width";
					
					//$config['new_image'] = $dir;
					$this->image_lib->initialize($config);
					if ( ! $this->load->library('image_lib', $config))
					{
						echo $this->image_lib->display_errors();
					}
					if ( ! $this->image_lib->resize())
					{
						echo $this->image_lib->display_errors();
						echo "<br/>".$dir.$nom;
					}
					$this->image_lib->clear();	
					$data= array(
						'nomphoto' => $nom ,
						'titrephoto' => "" ,
						'refgal' => $ligne->idgal
						);
					$ligne = $this->Gal_model->creer_photo($data);

				}			
		}
		
function output_thumb()
		{
				$nomgal = $this->uri->segment(3, 0);
				$nom = $this->uri->segment(4, 0);
				//die ($nomgal."/".$nom);
				//$ext_thumb="_thumb";
				$dir=$this->galeries_dir_rel;
				$chemin=$dir.$nomgal."/".$nom;
				if (file_exists($chemin))
				{
	
					 
					//$ligne=$this->Gal_model->get_galerie_infosid($refgal);
					$config['image_library'] = 'gd2';
					$config['source_image'] = $chemin;
					$config['create_thumb'] = TRUE;
					$config['maintain_ratio'] = TRUE;
					$config['width'] = $this->defaut_larg_min_first;
					$config['height'] = $this->defaut_larg_min_first;
					$config['quality'] = "100";
					//$config['thumb_marker'] = $ext_thumb;
					$config['master_dim'] = "width";
					$config['dynamic_output'] = TRUE;
					
					//$config['new_image'] = $dir;
					$this->image_lib->initialize($config);
					if ( ! $this->load->library('image_lib', $config))
					{
						echo $this->image_lib->display_errors();
					}
					if ( ! $this->image_lib->resize())
					{
						echo $this->image_lib->display_errors();
						echo "<br/>". $chemin;
					}
					$this->image_lib->clear();	
				}			
		}
		
	function _redim_gal($chemin,$largeur,$hauteur)
		{
			//die($largeur."x".$hauteur);
		
				$files=get_filenames($chemin);
				foreach($files as $file):
					$mime=get_mime_by_extension($file);
					$pos = stripos($mime, "image");
					$pos1 = stripos($file, "_thumb");
					// process si ce n'est pas une miniature
					if(!$pos1 && $pos!==false):	
						$this->_redim_photo($chemin.$file,$largeur,$hauteur);										
					endif;
				endforeach;
		}
		
	function _redim_photo($cheminfile,$largeur,$hauteur)
		{
				$erreur="";
				$config['image_library'] = 'gd2';
				$config['source_image'] = $cheminfile;
				$config['create_thumb'] = FALSE;
				$config['maintain_ratio'] = TRUE;
				$config['width'] = $largeur;
				$config['height'] = $hauteur;
				$config['quality'] = "100";
				$config['master_dim'] = "width";
				
				//$config['new_image'] = $dir;
				$this->image_lib->initialize($config);
				if ( ! $this->load->library('image_lib', $config))
				{
					$erreur.= $this->image_lib->display_errors();
				}
				if ( ! $this->image_lib->resize())
				{
					$erreur.= $this->image_lib->display_errors();
					$erreur.= "<br/>". $chemin.$file;
				}
				$this->image_lib->clear();	
				return $erreur;

		}	
		
	function _redim_thumb($chemin,$largeur,$hauteur)
		{
			//die($largeur."x".$hauteur);
		
				$files=get_filenames($chemin);
				foreach($files as $file):
					$mime=get_mime_by_extension($file);
					$pos = stripos($mime, "image");
					$pos1 = stripos($file, "_thumb");
					// process si ce n'est pas une miniature
					if(!$pos1 && $pos!==false):											
						$config['image_library'] = 'gd2';
						$config['source_image'] = $chemin.$file;
						$config['create_thumb'] = TRUE;
						$config['maintain_ratio'] = TRUE;
						$config['width'] = $largeur;
						$config['height'] = $hauteur;
						$config['quality'] = "100";
						$config['thumb_marker'] = "_thumb";
						$config['master_dim'] = "width";
						
						//$config['new_image'] = $dir;
						$this->image_lib->initialize($config);
						if ( ! $this->load->library('image_lib', $config))
						{
							echo $this->image_lib->display_errors();
						}
						if ( ! $this->image_lib->resize())
						{
							echo $this->image_lib->display_errors();
							echo "<br/>". $chemin.$file;
						}
						$this->image_lib->clear();	
					endif;
				endforeach;
		}

    function _do_upload($ligne)
    {
	
        //$config['upload_path'] = './images/galeries/galerie 1/'; // server directory
        $config['upload_path'] = $this->galeries_dir_rel.$this->nomgal."/"; // server directory
		//die($this->galeries_dir_rel.$this->nomgal."/");
        $config['allowed_types'] = 'gif|jpg|png|jpeg'; // by extension, will check for whether it is an image
        $config['max_size']    = '2000'; // in kb
        $config['max_width']  = '2500';
        $config['max_height']  = '2500';
        
        $this->load->library('upload', $config);
        //$this->load->library('MY_Upload');
		
        $this->load->library('Multi_upload');
        $files = $this->multi_upload->go_upload();

        if ( ! $files )        
        {
			//print_r($files);
			//die("vide");
			return $this->upload->display_errors();
            //die( "rien reçu ".$this->upload->display_errors());
       } 
        else
        {
			//$files=get_filenames($this->galeries_dir_rel.$this->nomgal.'/');
			foreach($files as $file):
				$this->creer_thumb($this->galeries_dir_rel.$this->nomgal.'/',$file["name"],$ligne);
				if($ligne->larg >0 && $ligne->haut >0):
					$this->_redim_photo($this->galeries_dir_rel.$this->nomgal."/".$file["name"],$ligne->larg,$ligne->haut);
				endif;
			endforeach;
			return true;
            //$data = array('upload_data' => $files);
            //$this->load->view('upload_success', $data);
        }
    }  
	function _process_connect($data)
	{
		if ($this->session->userdata('connected') && $this->session->userdata('connected')=="ok" )
			{
				// identifié
				$data["connexion_texte"]="d&eacute;connexion";
				$data["connexion_classe"]="deconnexion";
				$data["user_niveau"]=$this->session->userdata('niveau');

			}
		else
			{
				// public
				$data["connexion_texte"]="connexion";
				$data["connexion_classe"]="connexion";
				$data["user_niveau"]=0;
			}
		$data["connexion_retour"]=$this->uri->uri_string();
		$this->session->set_userdata('retour', $this->uri->uri_string());
		return $data;
	}
	
	function connexion()
	{
		$data=array();
		$data["login"]=$this->input->post('login', TRUE);	// no need XSS
		$data["pass"]=$this->input->post('pass', TRUE);
		$data["retour"]=$this->input->post('retour', FALSE);
		$this->db->where("login",$data["login"]);
		$this->db->where("pass",$data["pass"]);
		$query=$this->db->get("comptes");
		if ($query->num_rows()>0)
			{
				$ligne=$query->result();
				$this->session->set_userdata('connected', "ok");
				$this->session->set_userdata('login', $ligne[0]->login);
				$this->session->set_userdata('pass', $ligne[0]->pass);
				$this->session->set_userdata('niveau', $ligne[0]->niveau);
				//print_r($ligne);
				//die ("niveau = ".$ligne[0]->niveau." / login = ".$ligne[0]->login." / nombre = ".$query->num_rows());
			}
		else
			{
				$this->session->set_userdata('connected', "ko");
				$this->session->set_userdata('login', "");
				$this->session->set_userdata('pass', "");
				$this->session->set_userdata('niveau',0);
			} 
		redirect($data["retour"]);	// pas de view donc ....	
		
	}
function deconnexion()
	{
				$retour=$this->session->userdata('retour');
				$this->session->sess_destroy();
				//echo "page retour = ".$retour;
				//die();
				//echo "the address = ".$retour;
				$this->galerie=0;
				redirect($retour);	// pas de view donc ....	
				//redirect(site_url());	// pas de view donc ....	
		
	}
function _process_new_gal()
	{
		$this->form_validation->set_rules('titregal','titre','required|trim|xss_clean');			
		$this->form_validation->set_rules('chemingal','chemingal','required|trim|xss_clean');			
		$this->form_validation->set_rules('textegal','textegal');			
		$this->form_validation->set_rules('larg','larg','required|xss_clean|is_numeric');			
		$this->form_validation->set_rules('haut','haut','required|xss_clean|is_numeric');			
		$this->form_validation->set_rules('largmin','largmin','required|xss_clean|is_numeric');			
		$this->form_validation->set_rules('hautmin','hautmin','required|xss_clean|is_numeric');			
		$this->form_validation->set_rules('largmin','largmin','required|xss_clean|is_numeric');			

		$this->form_validation->set_rules('hmargin','hmargin','required|xss_clean|is_numeric');			
		$this->form_validation->set_rules('vmargin','vmargin','required|xss_clean|is_numeric');			
		$this->form_validation->set_rules('hmargin_min','hmargin_min','required|xss_clean|is_numeric');			
		$this->form_validation->set_rules('vmargin_min','vmargin_min','required|xss_clean|is_numeric');			

		$this->form_validation->set_rules('ordregal','ordregal','required|xss_clean|is_numeric');			
		$this->form_validation->set_rules('publier','publier','is_numeric');
			
		$this->form_validation->set_error_delimiters('<span class="error">', '</span>');
		//die("texte = ".set_value('textegal'));
		//die("texte = ".$this->input->post("textegal"));
		if ($this->form_validation->run()) 
		 // passed validation proceed to post success logic
			{
				// build array for the model
				
				$form_data = array(
								'titregal' => set_value('titregal'),
								'chemingal' => set_value('chemingal'),
								'textegal' => $this->input->post("textegal"),
								'larg' => set_value('larg'),
								'haut' => set_value('haut'),
								'largmin' => set_value('largmin'),
								'hautmin' => set_value('hautmin'),
								'hmargin' => set_value('hmargin'),
								'vmargin' => set_value('vmargin'),
								'hmargin_min' => set_value('hmargin_min'),
								'vmargin_min' => set_value('vmargin_min'),
								'ordregal' => set_value('ordregal'),
								'publier' => set_value('publier')
							);
				if ( $this->input->post('idgal')=="")	
					{	
						//$form_data["textegal"]=set_value('textegaln');
						// run insert model to write data to db
						if ($this->Gal_model->new_gal($form_data) == TRUE) // the information has therefore been successfully saved in the db
							{
								// creer le répertoire
								mkdir($this->galeries_dir_rel.$this->input->post('chemingal'), 0777);
								redirect($this->uri->uri_string());   // or whatever logic needs to occur
							}
						else
							{
								//$data["erreur"]='An error occurred saving your information. Please try again later<br/>';
								return 'An error occurred saving your information. Please try again later<br/>';
							}
					}
				else
					{
						//$form_data["textegal"]=set_value('textegalm');
						// test si modif taille 
						$infos=$this->Gal_model->get_galerie_infosid($this->input->post('idgal'));
						if (($infos->larg !=$form_data["larg"]  || $infos->haut !=$form_data["haut"]) && $form_data["larg"]!=0 && $form_data["haut"]!=0)
							{
								$this->_redim_gal($this->galeries_dir_rel.$this->input->post('chemingal')."/",$form_data["larg"],$form_data["haut"]);
							}
						// test si modif taille miniatures
						//$infos=$this->Gal_model->get_galerie_infosid($this->input->post('idgal'));
						if (($infos->largmin !=$form_data["largmin"]  || $infos->hautmin !=$form_data["hautmin"]))
							{
								$this->_redim_thumb($this->galeries_dir_rel.$this->input->post('chemingal')."/",$form_data["largmin"],$form_data["hautmin"]);
							}
						
						// run update model to write data to db
						if ($this->Gal_model->modif_gal($form_data,$this->input->post('idgal')) == TRUE) // the information has therefore been successfully saved in the db
							{
								// rename directory
								// resample thumbs
								
								//redirect($this->uri->uri_string());   // or whatever logic needs to occur
								
								redirect($this->input->post('retour'));   // or whatever logic needs to occur
							}
						else
							{
								//$data["erreur"]='An error occurred saving your information. Please try again later<br/>';
								return 'An error occurred updating your information. Please try again later<br/>';
							}

					}
			}
	}

function _process_modif_photo()
	{
		$this->form_validation->set_rules('titre','titre','trim|xss_clean');			
		$this->form_validation->set_rules('ordre','ordre','trim|xss_clean|is_natural|required');			
			
		$this->form_validation->set_error_delimiters('<span class="error">', '</span>');
	
		if ($this->form_validation->run()) 
		 // passed validation proceed to post success logic
			{
				// build array for the model
				
				$form_data = array(
								'titrephoto' => set_value('titre',''),
								'ordrephoto' => set_value('ordre','0')
							);
				if ( $this->input->post('idphoto'))	
					{	
						// run update model to write data to db
						if ($this->Gal_model->modif_photo($form_data,$this->input->post('idphoto')) == TRUE) // the information has therefore been successfully saved in the db
							{
								//redirect($this->input->post('retour'));   // or whatever logic needs to occur
							}
						else
							{
								//$data["erreur"]='An error occurred saving your information. Please try again later<br/>';
								return 'An error occurred updating photo information. Please try again later<br/>';
							}
					
					}
			}
	}

function _process_admin($data)
	{
		if($this->session->userdata('connected')=="ok")		// admin?
			{
				//die("connected");
				if ($this->galerie==0)
					{
						// reference de la premiere galerie
						$this->galerie = $this->Gal_model->first_all_galerie($data);
					}
				$this->nomgal = $this->Gal_model->get_galerie_nom($this->galerie);
				$this->titregal = $this->Gal_model->get_galerie_titre($this->galerie);
				// reception post
				if($this->input->post('new_gal')) 
					{
						$data["erreur"].=$this->_process_new_gal();
					}
				if($this->input->post('modif_gal')) 
					{
						$data["erreur"].=$this->_process_new_gal();
					}
				if($this->input->post('upload')) 
					{
						$ligne=$this->Gal_model->get_galerie_infosid($this->galerie);		// infos galerie
						//die("reçu");	
						$data["erreur"].=$this->_do_upload($ligne);
						redirect($this->_url_redirect($this->uri->segment_array(),2));

					}
				if($this->input->post('modif_photo')) 
					{
						$data["erreur"].=$this->_process_modif_photo();
					}
				if ($this->uri->segment(4)=="del")
					{
						$this->Gal_model->del_galerie_id($this->galerie);
						$this->Gal_model->del_photos_gal($this->galerie);
						$this->_deleteDirectory($this->galeries_dir_rel.$this->nomgal.'/');
						$this->galerie = $this->Gal_model->first_all_galerie($data);
						$this->nomgal = $this->Gal_model->get_galerie_nom($this->galerie);
						$this->titregal = $this->Gal_model->get_galerie_titre($this->galerie);
						redirect($this->_url_redirect($this->uri->segment_array(),2));
					}

				if ($this->uri->segment(4)=="suppression")
					{
						$idphoto = $this->uri->segment(5, 0);
						$ligne=$this->Gal_model->get_photo_infosid($idphoto);				// recup nom photo
						
						unlink($this->galeries_dir_rel.$ligne->chemingal.'/'.$ligne->nomphoto);	// del photo
						//die($this->galeries_dir_rel.$galerie.'/'.$ligne->nomphoto);
						$path_parts = pathinfo($ligne->nomphoto);
						
						$filethumb=$path_parts['filename']."_thumb".".".$path_parts['extension'];
						unlink($this->galeries_dir_rel.$ligne->chemingal.'/'.$filethumb);			// del thumb
						
						$idphoto = $this->Gal_model->del_photo_id($idphoto);				// del photo dans base
						redirect($this->_url_redirect($this->uri->segment_array(),2));
					}
					
				// si admin recherche les dossiers qui ne sont pas encore enregistrés dans la base
				$galeries=directory_map($this->galeries_dir_rel, TRUE);			// lecture des répertoires
				foreach($galeries as $galerie): 
					//$ligne = $this->Gal_model->this_galerie_exist($galerie);
					if (!$this->Gal_model->this_galerie_exist($galerie))							// pas trouvé dans la base
						{
							// creer galerie sans la publier
							$data1= array(
							   'titregal' => $galerie ,
							   'chemingal' => $galerie ,
							   'textegal' => '',
							   'larg' => $this->defaut_larg,
							   'haut' => $this->defaut_haut,
							   'largmin' => $this->defaut_larg_min,
							   'hautmin' => $this->defaut_haut_min,
							   'ordregal' => '0',							// arrière plan
							   'publier' => '0'								// pas publiée
							);
							$refgal = $this->Gal_model->creer_galerie($data1);
							$ligne=$this->Gal_model->get_galerie_infosid($refgal);		// infos galerie

							// rechercher les images et les enregistrer dans la base
							$files=get_filenames($this->galeries_dir_rel.$galerie.'/');
							foreach($files as $file):
								$this->creer_thumb($this->galeries_dir_rel.$galerie.'/',$file,$ligne);
								
							endforeach;
						
							
						}
				 endforeach;
				$galeries = $this->Gal_model->liste_all_galeries();			// toutes les galeries 
				
			}
		else
			{
				$galeries = $this->Gal_model->liste_galeries();				// les galeries publiées
				if ($this->galerie==0)
					{
						// reference de la premiere galerie
						$this->galerie = $this->Gal_model->first_galerie($data);
					}
				$this->nomgal = $this->Gal_model->get_galerie_nom($this->galerie);
				$this->titregal = $this->Gal_model->get_galerie_titre($this->galerie);
			}
		$data["galeries"]=$galeries;
		return $data;
	}


function _deleteDirectory($dir) {
    if (!file_exists($dir)) return true;
    if (!is_dir($dir) || is_link($dir)) return unlink($dir);
        foreach (scandir($dir) as $item) {
            if ($item == '.' || $item == '..') continue;
            if (!$this->_deleteDirectory($dir . "/" . $item)) {
                chmod($dir . "/" . $item, 0777);
                if (!$this->_deleteDirectory($dir . "/" . $item)) return false;
            };
        }
        return rmdir($dir);
    } 
  
function _url_redirect($segs,$max)
	{
		$compteur=0;
		$result="";
		foreach ($segs as $segment)
			{
				if ($compteur <= $max)
					{
						$result.="/".$segment;
						$compteur++;
					}
			}
		return $result;
	}
// génère et envoi le sitemp à google : à intergrer à chaque modif de galerie????
 function map()
    {
		$status="Liste des URL transmises : <br/><hr/>";
        $sitemap = new google_sitemap; //Create a new Sitemap Object
		$item = new google_sitemap_item(base_url(),date("Y-m-d"), 'weekly', '0.8' ); //Create a new Item index page
		$status.=base_url()."<br/>";
		
		$sitemap->add_item($item); //Append the item to the sitemap object
		$galeries = $this->Gal_model->liste_galeries();				// les galeries publiées
		if($galeries):
                foreach($galeries->result() as $galerie):
					$item = new google_sitemap_item(base_url()."galerie/selection/".$galerie->chemingal,date("Y-m-d"), 'weekly', '0.8' ); //Create a new Item
					$sitemap->add_item($item); //Append the item to the sitemap object
					$status.=base_url()."galerie/selection/".$galerie->chemingal."<br/>";
					$item = new google_sitemap_item(base_url()."galerie/news/".$galerie->chemingal,date("Y-m-d"), 'weekly', '0.8' ); //Create a new Item
					$sitemap->add_item($item); //Append the item to the sitemap object
					$status.=base_url()."galerie/news/".$galerie->chemingal."<br/>";
					$item = new google_sitemap_item(base_url()."galerie/parcours/".$galerie->chemingal,date("Y-m-d"), 'weekly', '0.8' ); //Create a new Item
					$sitemap->add_item($item); //Append the item to the sitemap object
					$status.=base_url()."galerie/parcours/".$galerie->chemingal."<br/>";
					$item = new google_sitemap_item(base_url()."galerie/liens/".$galerie->chemingal,date("Y-m-d"), 'weekly', '0.8' ); //Create a new Item
					$sitemap->add_item($item); //Append the item to the sitemap object
					$status.=base_url()."galerie/liens/".$galerie->chemingal."<br/>";
                endforeach; 
                endif;
        $sitemap->build("./sitemap.xml"); //Build it...
                
         //Let's compress it to gz
        $data = implode("", file("./sitemap.xml"));
        $gzdata = gzencode($data, 9);
        $fp = fopen("./sitemap.xml.gz", "w");
        fwrite($fp, $gzdata);
        fclose($fp);

        //Let's Ping google
		$status.="<hr/>Ping Google : sitemap.xml.gz is ready <br/>";
        $retour=$this->_pingGoogleSitemaps(base_url()."/sitemap.xml.gz");
		if($retour):
			$status.="transmission ok :".$retour;
		else:
			$status.="pas de transmission";
		endif;
        //Let's Ping Bing
		$status.="<hr/>Ping Bing : sitemap.xml.gz is ready <br/>";
       	$retour=$this->_pingBingSitemaps(base_url()."/sitemap.xml.gz");
        //$retour=$this->_pingBingSitemaps(base_url()."/sitemap.xml.gz");
		if($retour):
			$status.="transmission ok :".$retour;
		else:
			$status.="pas de transmission";
		endif;
		$this->index($status);
		//die($status);
    }

function _pingGoogleSitemaps( $url_xml )
    {
       $status = 0;
       $google = 'www.google.com';
       if( $fp=@fsockopen($google, 80) )
       {
          $req =  'GET /webmasters/sitemaps/ping?sitemap=' .
                  urlencode( $url_xml ) . " HTTP/1.1\r\n" .
                  "Host: $google\r\n" .
                  "User-Agent: Mozilla/5.0 (compatible; " .
                  PHP_OS . ") PHP/" . PHP_VERSION . "\r\n" .
                  "Connection: Close\r\n\r\n";
          fwrite( $fp, $req );
          while( !feof($fp) )
          {
             if( @preg_match('~^HTTP/\d\.\d (\d+)~i', fgets($fp, 128), $m) )
             {
                $status = intval( $m[1] );
                break;
             }
          }
          fclose( $fp );
       }
       return( $status );
    }
function _pingBingSitemaps( $url_xml )
    {
       $status = 0;
       $bing = 'www.bing.com';
       if( $fp=@fsockopen($bing, 80) )
       {
          $req =  'GET /webmaster/ping.aspx?siteMap=' .
                  urlencode( $url_xml ) . " HTTP/1.1\r\n" .
                  "Host: $bing\r\n" .
                  "User-Agent: Mozilla/5.0 (compatible; " .
                  PHP_OS . ") PHP/" . PHP_VERSION . "\r\n" .
                  "Connection: Close\r\n\r\n";
          fwrite( $fp, $req );
          while( !feof($fp) )
          {
             if( @preg_match('~^HTTP/\d\.\d (\d+)~i', fgets($fp, 128), $m) )
             {
                $status = intval( $m[1] );
                break;
             }
          }
          fclose( $fp );
       }
       return( $status );
    }

function _summary($content, $length = 20, $finish = '&#8230;') {
		// Clean and explode our content, Strip all HTML tags, and special charactors.
		$words = explode(' ', strip_tags(preg_replace('/[^(\x20-\x7F)]*/','', $content)));
		// Get a count of all words, and check we have less/more than our required amount of words.
		$count = count($words);
		$limit = ($count > $length)?$length:$count;
		// if we have more words than we want to show, add our ...
		$end   = ($count > $length)?$finish:'';
		// create output
		for($w = 0;$w<=$limit;$w++) {
			$output .= $words[$w];
			if($w < $limit) $output .= ' ';
		}
		// return end result.
		return $output.$end;
	}
}
?>