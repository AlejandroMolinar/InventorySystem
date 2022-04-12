<?php

class Log_model extends CI_Model {
     public function construct(){
          parent::_construct();
          //Sthis->load->helper('string');
     }
          
     public function insertar($data){
          $this->db->insert('Inventory_System',$data);
          $id=$this->db->insert_id();
          return $id;
     }
     public function getall(){
          //Sthis->db->ahere('activo',1);
          $query = $this->db->get('usuarios');
          return $query->result();
     }
?>