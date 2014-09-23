<?php
class Editor_model extends Model {
  function Editor_model(){
    parent::Model();
  }

function get_news() {
	$this->db->where("idpages",1);
    $query = $this->db->get('lespages');
	if ($query->num_rows()>0)
		{
			$ligne=$query->result();
			return $ligne[0]->contenu;
		}                                                               
    return "";
  }
  function save_news($data) {
	$this->db->where("idpages",1);
	//$this->db->set("contenu",$data);
	return $this->db->update('lespages',$data);
   }
function get_liens() {
	$this->db->where("idpages",2);
    $query = $this->db->get('lespages');
	if ($query->num_rows()>0)
		{
			$ligne=$query->result();
			return $ligne[0]->contenu;
		}                                                               
    return "";
  }
function save_liens($data) {
	$this->db->where("idpages",2);
	//$this->db->set("contenu",$data);
	return $this->db->update('lespages',$data);
   }
function get_parcours() {
	$this->db->where("idpages",3);
    $query = $this->db->get('lespages');
	if ($query->num_rows()>0)
		{
			$ligne=$query->result();
			return $ligne[0]->contenu;
		}                                                               
    return "";
  }
  function save_parcours($data) {
	$this->db->where("idpages",3);
	//$this->db->set("contenu",$data);
	return $this->db->update('lespages',$data);
   }

}
?>
