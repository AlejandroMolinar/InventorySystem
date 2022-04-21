<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_model{

    public function __construct(){
        $this->load->database();
    }

    public function reed($data_si){

    }

    public function create($data_sp){
        // $query = $this->db->get_where('inventory_system', array('nombre' => $nombre));
        // if($query->num_rows() == 1)
        // {
        //     $row=$query->row();
        //     if(password_verify($password, $row->password))
        //     {
        //         $data=array('user_data'=>array(
        //             'nombre'=>$row->nombre,
        //             'id'=>$row->id,
        //             'mail'=>$row->correo,
        //             'password'=>$row->password)
        //         );
        //         $this->session->set_userdata($data);
        //         return true;
        //     }
        // }
        // $this->session->unset_userdata('user_data');
        // return false;
    }
}
