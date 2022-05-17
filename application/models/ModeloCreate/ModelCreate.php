<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ModelCreate extends CI_model{

    public function __construct(){
        $this->load->database();
    }

    public function GetTable($table, $select){
        
        $this->db->select($select);
        $this->db->from($table);
        $data_log= $this->db->get();
        return $data_log->result();

    }

    public function GetTables($table, $select, $key, $search){
        $this->db->select($select);
        $this->db->from($table);
        $this->db->where($key , $search);
        $data_log= $this->db->get();
        return $data_log->row();

    }

    public function create($table, $data){
        if(!$this->db->insert($table, $data)){
            return FALSE;
        }
        return TRUE;
    }

    public function update($table, $data){
        if(!$this->db->insert($table, $data)){
            return FALSE;
        }
        return TRUE;
    }


}
