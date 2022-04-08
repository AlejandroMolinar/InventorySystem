<?php
class Log_model extends CI_Model {
    
    public function _construct(){
        parent::_construct();
        //sthis->load->helper('string");
    }
  public function insertar($data){
        $this->db->insert('Inventory',$data);
        $id-$this->db->insert_id();
        return $id;
    }
    public function getall(){
         //Sthis->db-where('activo', 1);
        $query = $this->db->get ('Inventory');
        return $query->result();
    }
}       
?>