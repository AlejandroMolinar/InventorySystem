<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inventario_model extends CI_model{

    public function __construct(){
        $this->load->database();
    }

    public function GetTable(){
        
        $data_log= $this->db->get('inventario');
        return $data_log->result();

    }

    public function GetTables($table, $select, $key, $search){
        $this->db->select($select);
        $this->db->from($table);
        $this->db->where($key , $search);
        $data_log= $this->db->get();
        return $data_log->row();

    }

    public function create($data_sp){
        if(!$this->db->insert('inventario', $data_sp)){
            return FALSE;
        }
        return TRUE;
    }
}
