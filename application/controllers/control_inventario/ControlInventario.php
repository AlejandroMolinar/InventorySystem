<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ControlInventario extends CI_Controller
{
	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('Control_Inventario/Inventario_model');
	}
	public function index(){
		if ($this->session->userdata('is_logged')) {
			$range = $this->session->range;

			$data = $this->Inventario_model->GetTable();
			$contador =0; 

			
			foreach ($data as $items) {
				$marca= array ($contador => $this->GetElements('marca', 'cod_marc', $items->cod_marc));
				$modelo= array ($contador => $this->GetElements('modelo', 'id_mod', $items->id_mod_bien));
				$numBien= array ($contador => $this->GetElements('bien_mue', 'id_bien_mue', $items->id_num_bien));
				$color= array ($contador => $this->GetElements('colores', 'id_col', $items->id_clr_bien));
				$componente= array ($contador => $this->GetElements('tp_comp', 'id_tp_comp', $items->id_tpc_bien));
				$undAdm= array ($contador => $this->GetElements('uni_adm', 'id_uni_adm', $items->id_adm_bien));
				$trabajador= array ($contador => $this->GetElements('trabajador', 'id_trb', $items->id_trb_bien));
				$ciudad= array ($contador => $this->GetElements('ciudad', 'id_ciu', $items->id_ciu_bien));
				$municipio= array ($contador => $this->GetElements('municipio', 'id_mun', $items->id_mun_bien));
				$parroquia= array ($contador =>  $this->GetElements('parroquia', 'id_parr', $items->id_parr_bien));
				$contador+1;
			}

			var_dump($marca);

			if ($data != null) {
				$this->GetView($range, $data);
			}
		} else {
			redirect(base_url());
		}
	}

	public function GetView($range, $dataTable){

		if ($range != 1) {
			$view = $this->load->view('user/inventario_user', array('table' => $dataTable), TRUE);
		} else {
			$view = $this->load->view('admin/inventario_admin', array('table' => $dataTable), TRUE);
		}
		$data = array(
			'head' => $this->load->view('layout/head', '', TRUE),
			'nav' => $this->load->view('layout/navbar', '', TRUE),
			'content' => $view,
			'side' => $this->load->view('layout/sidebar', '', TRUE),
			'footer' => $this->load->view('layout/footer', '', TRUE),
		);



		$this->load->view('inventario', $data);
	}
	
	public function GetElements($table, $key, $item){
		return $this->Inventario_model->GetTables($table, $key , $item);
	}
	
	public function Inventario(){
	}
}
