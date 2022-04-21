<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_model{

    public function __construct(){
        $this->load->database();
    }

    public function reed($data_si){

    }

    public function create($data_sp){
        $this->db->insert('mytable', $data_sp);
    }
}
