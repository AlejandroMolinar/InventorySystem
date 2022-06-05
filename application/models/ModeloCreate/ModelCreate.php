<?php
/* ===========================================================================================
    Archivo: ModelCreate.php
    Descripcion: Modelo para la Creacion y la Actualizacion de un Bienes.
    Fecha de Creacion: 5-04-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>

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

    public function update($table, $data, $key, $search){

        $this->db->set($data);
        $this->db->where($key, $search);
        if(!$this->db->update($table)){
            return FALSE;
        }
        return TRUE;
    }


}
