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

			$datatotal= array();
			$contador=0;

			foreach ($data as $items) {

				$id= $items->id_inv_bien; 
				$marca= $this->GetElements('marca', 'cod_marc', $items->cod_marc);
				$modelo= $this->GetElements('modelo', 'id_mod', $items->id_mod_bien);
				$serial= $items->serial_bien; 
				$numBien=$this->GetElements('bien_mue', 'id_bien_mue', $items->id_num_bien);
				$color= $this->GetElements('colores', 'id_col', $items->id_clr_bien);
				$componente= $this->GetElements('tp_comp', 'id_tp_comp', $items->id_tpc_bien);
				$undAdm= $this->GetElements('uni_adm', 'id_uni_adm', $items->id_adm_bien);
				$trabajador= $this->GetElements('trabajador', 'id_trb', $items->id_trb_bien);
				$ciudad= $this->GetElements('ciudad', 'id_ciu', $items->id_ciu_bien);
				$municipio= $this->GetElements('municipio', 'id_mun', $items->id_mun_bien);
				$parroquia= $this->GetElements('parroquia', 'id_parr', $items->id_parr_bien);
				$fecha= $items->fec_crt_inv; 
				$hora= $items->hor_crt_inv;
				$status= $items->status;

				$datos= array(
					'id' => $id,
					'marca' => $marca -> den_com_marc,
					'modelo' => $modelo -> den_mod,
					'serial' => $serial,
					'numBien' => $numBien -> num_bien_mue,
					'color' => $color -> desc_col,
					'componente' => $componente -> mat_tp_comp,
					'undAdm' => $undAdm -> desc_uni_adm,
					'nombre' => $trabajador -> nombre_trb,
					'apellido' => $trabajador -> apellido_trb,
					'ciudad' => $ciudad -> desc_ciu,
					'municipio' => $municipio -> desc_mun,
					'parroquia' => $parroquia -> desc_parr,
					'fecha' => $fecha,
					'hora' => $hora,
					'status' => $status,
				);
				array_push($datatotal, $datos);
			}

			// foreach ($datatotal as $key) {
				// foreach ($key as $item) {
					var_dump($datos);
				// }
			// }

			if ($data != null) {
				$this->GetView($range, $datatotal);
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
