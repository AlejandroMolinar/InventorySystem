<?php
/* ===========================================================================================
    Archivo: Login_model.php
    Descripcion: Modelo principal de Login.
    Fecha de Creacion: 12-04-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_model{

    public function __construct(){
        $this->load->database();
    }
    public function user($user){
        
        $data_log= $this->db->get_where('trabajador', array('email_trb' => $user), 1);
        if(!$data_log->result()){
            return FALSE;
        }
        return $data_log->row();

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

    public function create($data_sp){
        if(!$this->db->insert('trabajador', $data_sp)){
            return FALSE;
        }
        return TRUE;
    }
}
