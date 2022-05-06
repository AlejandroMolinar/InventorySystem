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
				$marca= array ($contador => $this->GetView('marca', 'id_marc', $items->cod_marc));
				$modelo= array ($contador => $this->GetView('modelo', 'id_mod', $items->id_mod_bien));
				$numBien= array ($contador => $this->GetView('bien_mue', 'id_bien_mue', $items->id_num_bien));
				$color= array ($contador => $this->GetView('colores', 'id_col', $items->id_clr_bien));
				$componente= array ($contador => $this->GetView('tp_comp', 'id_tp_comp', $items->id_tpc_bien));
				$undAdm= array ($contador => $this->GetView('uni_adm', 'id_uni_adm', $items->id_adm_bien));
				$trabajador= array ($contador => $this->GetView('trabajador', 'id_trb', $items->id_trb_bien));
				$ciudad= array ($contador => $this->GetView('ciudad', 'id_ciu', $items->id_ciu_bien));
				$municipio= array ($contador => $this->GetView('municipio', 'id_mun', $items->id_mun_bien));
				$parroquia= array ($contador => $this->GetView('parroquia', 'id_parr', $items->id_parr_bien));
			}

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
	
	public function getelements($table, $key, $item){
		$this->Inventario_model->GetTables($table, $key , $item)
	}
	
	public function Inventario(){
	}
}
