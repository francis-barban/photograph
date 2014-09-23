<?php
class Gal_model extends Model {
  function Gal_model(){
    parent::Model();
  }

  function get_galerie_infos($nom) {
	$this->db->order_by("ordregal","asc");
	$this->db->where("chemingal",$nom);
    $query = $this->db->get('galeries');
	$ligne=array();	
	if ($query->num_rows()>0)
		{
			$ligne=$query->result();
		}                                                               
    return $ligne;
  }
  function get_galerie_infosid($id) {
	$this->db->order_by("ordregal","asc");
	$this->db->where("idgal",$id);
    $query = $this->db->get('galeries');
	$ligne=array();	
	if ($query->num_rows()>0)
		{
			$ligne=$query->result();
			return $ligne[0];
		}                                                               
    return $ligne;
  }
  function get_galerie_id($nom) {
	$this->db->where("chemingal",$nom);
    $query = $this->db->get('galeries');
	$retour=0;	
	if ($query->num_rows()>0)
		{
			$ligne=$query->result();
			$retour=$ligne[0]->idgal;
		}                                                               
    return $retour;
  }
  function get_galerie_nom($id) {
	$this->db->where("idgal",$id);
    $query = $this->db->get('galeries');
	$retour="";	
	if ($query->num_rows()>0)
		{
			$ligne=$query->result();
			$retour=$ligne[0]->chemingal;
		}                                                               
    return $retour;
  }
  
  function get_galerie_titre($id) {
	$this->db->where("idgal",$id);
    $query = $this->db->get('galeries');
	$retour="";	
	if ($query->num_rows()>0)
		{
			$ligne=$query->result();
			$retour=$ligne[0]->titregal;
		}                                                               
    return $retour;
  }
  function this_galerie_exist($nom) {
	$this->db->order_by("ordregal","asc");
	$this->db->where("chemingal",$nom);
    $query = $this->db->get('galeries');
	if($query->num_rows()==0)
		{
			return false;
		}
	else
		{
			return true;
		}
  }
  function creer_galerie($data) {
	$this->db->insert('galeries', $data);
	return $this->db->insert_id();
   }
   
  function liste_galeries() {
	$this->db->order_by("ordregal","desc");
	$this->db->where("publier","1");
    $query = $this->db->get('galeries');
	if ($query->num_rows()>0)
		{
			return $query;
		}  
	else
		{
			return false;
		}                                                             
  }
  function liste_all_galeries() {
	$this->db->order_by("ordregal","desc");
	//$this->db->where("publier","1");
    $query = $this->db->get('galeries');
	if ($query->num_rows()>0)
		{
			return $query;
			
		}  
	else
		{                                                             
			return false;
		}
  }
function first_galerie() {
	$this->db->order_by("ordregal","asc");
	$this->db->where("publier","1");
    $query = $this->db->get('galeries');
	if ($query->num_rows()>0)
		{
			
			$ligne=$query->result();
			return $ligne[0]->idgal;
		}  
	else
		{
			return false;
		}                                                             
  }
function first_all_galerie() {
	$this->db->order_by("ordregal","asc");
	//$this->db->where("publier","1");
    $query = $this->db->get('galeries');
	if ($query->num_rows()>0)
		{
			
			$ligne=$query->result();
			return $ligne[0]->idgal;
		}  
	else
		{
			return false;
		}                                                             
  }
   function del_galerie_id($id) {
	return $this->db->delete('galeries', array('idgal' => $id));
   }
 
   function del_photo_id($id) {
	return $this->db->delete('photos', array('idphoto' => $id));
   }
    function creer_photo($data) {
	$this->db->insert('photos', $data);
	return $this->db->insert_id();
   }

  function get_photo_infosid($id) {
	$this->db->select('*');
	$this->db->from('photos');
	$this->db->join('galeries', 'photos.refgal = galeries.idgal');
	$this->db->where("photos.idphoto",$id);
	$this->db->order_by("photos.ordrephoto","desc");
	$query = $this->db->get();
	$ligne=array();	
	if ($query->num_rows()>0)
		{
			$ligne=$query->result();
			return $ligne[0];
		}                                                               
    return $ligne;
  }

  function get_photos($idgal) {
	$this->db->select('*');
	$this->db->from('photos');
	$this->db->join('galeries', 'photos.refgal = galeries.idgal');
	$this->db->where("photos.refgal",$idgal);
	$this->db->order_by("photos.ordrephoto","desc");
	$query = $this->db->get();
	if ($query->num_rows()>0)
		{
			return $query;
			
		}  
	else
		{                                                             
			return false;
		}
  }

  function get_first_photo($idgal) {
	$this->db->select('*');
	$this->db->from('photos');
	$this->db->join('galeries', 'photos.refgal = galeries.idgal');
	$this->db->where("photos.refgal",$idgal);
	$this->db->order_by("photos.ordrephoto","desc");
	$query = $this->db->get();
	if ($query->num_rows()>0)
		{
			$ligne=$query->result();
			return $ligne[0]; 
		}  
	else
		{                                                             
			return false;
		}
  }



  function del_photos_gal($idgal) {
	return $this->db->delete('photos', array('refgal' => $idgal));
  }
 	function new_gal($form_data)
	{
		$this->db->insert('galeries', $form_data);
		
		if ($this->db->affected_rows() == '1')
		{
			return TRUE;
		}
		
		return FALSE;
	}
 	function modif_gal($form_data,$id)
	{
		$this->db->where('idgal', $id);
		return $this->db->update('galeries', $form_data);
		/*if ($this->db->affected_rows() == '1')
		{
			return TRUE;
		}
		return FALSE;*/
	}
 	function modif_photo($form_data,$id)
	{
		$this->db->where('idphoto', $id);
		return $this->db->update('photos', $form_data);
		/*if ($this->db->affected_rows() == '1')
		{
			return TRUE;
		}
		return FALSE;*/
	}

}
?>
