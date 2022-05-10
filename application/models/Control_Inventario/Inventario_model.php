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

    public function GetTables($table, $key, $search){
        
        $data_log= $this->db->get_where($table, array($key => $search), 1);
        return $data_log->result();

    }

    public function create($data_sp){
        if(!$this->db->insert('inventario', $data_sp)){
            return FALSE;
        }
        return TRUE;
    }
}
