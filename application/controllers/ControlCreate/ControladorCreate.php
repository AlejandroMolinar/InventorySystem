<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ControladorCreate extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('ModeloCreate/ModelCreate');
		$this->load->helper(array('auth/fromCreate'));

	}
	public function index(){
		$marca = $this->ModelCreate->GetTable('marca', 'cod_marc, den_com_marc');
		$modelo = $this->ModelCreate->GetTable('modelo', 'id_mod, den_mod');
		$color = $this->ModelCreate->GetTable('colores', 'id_col, desc_col');
		$componente = $this->ModelCreate->GetTable('tp_comp', 'id_tp_comp, mat_tp_comp');
		$undAdm = $this->ModelCreate->GetTable('uni_adm', 'id_uni_adm, desc_uni_adm');
		$trabajador = $this->ModelCreate->GetTable('trabajador', 'id_trb, nombre_trb, apellido_trb');
		$ciudad = $this->ModelCreate->GetTable('ciudad', 'id_ciu, desc_ciu');
		$municipio = $this->ModelCreate->GetTable('municipio', 'id_mun, desc_mun');
		$parroquia = $this->ModelCreate->GetTable('parroquia', 'id_parr, desc_parr');

	//------------------Envio de Datos-----------------------------------------------------------

		$data = array(
			'head' => $this->load->view('VistaCreate/layout/head', '', TRUE),
			'nav' => $this->load->view('VistaCreate/layout/navbar', '', TRUE),
			'content' => $this->load->view('VistaCreate/content/formCreate', array(
				'marca' => $marca,
				'modelo' => $modelo,
				'color' => $color,
				'componente' => $componente,
				'undAdm' => $undAdm,
				'trabajador' => $trabajador,
				'ciudad' => $ciudad,
				'municipio' => $municipio,
				'parroquia' => $parroquia
			), TRUE),
			'footer' => $this->load->view('VistaCreate/layout/footer', '', TRUE),
		);

		$this->load->view('VistaCreate/vistaCreate', $data);
	}

	public function Guardar(){

	//---------------Elementos del Formulario-------------------------------------------------------------

		$marcaF = $this->input->post('marcaS');
		$modeloF = $this->input->post('modeloS');
		$serialF = $this->input->post('serialS');
		$numBienF = $this->input->post('numBienS');
		$colorF = $this->input->post('colorS');
		$componenteF = $this->input->post('componenteS');
		$undAdmF = $this->input->post('undAdmS');
		$trabajadorF = $this->input->post('trabajadorS');
		$ciudadF =  $this->input->post('ciudadS');
		$municipioF = $this->input->post('municipioS');
		$parroquiaF = $this->input->post('parroquiaS');


	//-------------------Validacion----------------------------------------------------------

		$config = register_rules();
			$this->form_validation->set_rules($config);
			$this->form_validation->set_error_delimiters('', '');


			if ($this->form_validation->run() === FALSE) {
				$error = array(
					'nombre_sp' => form_error('txt_nom_r'),
					'apellido_sp' => form_error('txt_ape_r'),
					'cedula_sp' => form_error('txt_ced_r'),
					'area_sp' => form_error('opcion_area_r'),
					'email_sp' => form_error('txt_ema_r'),
					'password_sp' => form_error('txt_pas_r'),
					'rep_password_sp' => form_error('txt_rep_pas'),
				);
				echo json_encode($error);
				$this->output->set_status_header(400);
				exit;
			} else {



		// redirect(base_url('controlInv'));

	}
}
