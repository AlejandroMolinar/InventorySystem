<?php

class Log_model extends CI_Model {
     public function construct(){
          parent::_construct();
          //Sthis->load->helper('string');
     }
          
     public function insertar($data){
          $this->db->insert('inventory_system',$data);
          $id=$this->db->insert_id();
          return $id;
     }
     public function getAll(){
          //Sthis->db->ahere('activo',1);
          $query = $this->db->get('inventory_system');
          return $query->result();
     }
?>