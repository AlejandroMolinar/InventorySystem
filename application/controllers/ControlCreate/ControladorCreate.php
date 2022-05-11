<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ControladorCreate extends CI_Controller
{
	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('ModeloCreate/ModelCreate');
	}
	public function index(){

			$marca		= $this->ModelCreate->GetTable('marca', 'den_com_marc');
			$modelo		= $this->ModelCreate->GetTable('modelo', 'den_mod');
			$color		= $this->ModelCreate->GetTable('colores', 'desc_col', 'id_col');
			$componente	= $this->ModelCreate->GetTable('tp_comp', 'mat_tp_comp');
			$undAdm		= $this->ModelCreate->GetTable('uni_adm', 'desc_uni_adm');
			$trabajador	= $this->ModelCreate->GetTable('trabajador', 'nombre_trb, apellido_trb');
			$ciudad		= $this->ModelCreate->GetTable('ciudad', 'desc_ciu');
			$municipio	= $this->ModelCreate->GetTable('municipio', 'desc_mun');
			$parroquia	= $this->ModelCreate->GetTable('parroquia', 'desc_parr');

		// foreach ($datos as $key) {
		// 	foreach ($key['modelo'] as $item) {			
		// 		var_dump($item->den_mod);
		// 	}
		// }
			$data = array(
				'head' => $this->load->view('VistaCreate/layout/head', '', TRUE),
				'nav' => $this->load->view('VistaCreate/layout/navbar', '', TRUE),
				'content' => $this->load->view('VistaCreate/content/formCreate', array(), TRUE),
				'footer' => $this->load->view('VistaCreate/layout/footer', '', TRUE),
			);

			$this->load->view('VistaCreate/vistaCreate', $data);
	}
}
