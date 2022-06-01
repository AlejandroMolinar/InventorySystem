<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ControlUpdate extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('ModeloCreate/ModelCreate');
		$this->load->helper(array('auth/userUpdate'));
	}
	public function index($id){
		if ($this->session->userdata('is_logged')) {

			$timeLog = $this->session->time;
			$timeNow = time();

			if ($timeNow - $timeLog >= 300) {
				session_destroy();
				redirect(base_url());
			} else {

				//----------------------Querys-------------------------------------------------------
				$datos = $this->ModelCreate->GetTables('trabajador', '*', 'id_trb', $id);

				$undAdm = $this->ModelCreate->GetTable('uni_adm', 'id_uni_adm, desc_uni_adm');


				//------------------Envio de Datos-----------------------------------------------------------

				$data = array(
					'head' => $this->load->view('VistaUsuarios/layout/headUpdate', '', TRUE),
					'nav' => $this->load->view('VistaUsuarios/layout/navbar', '', TRUE),
					'content' => $this->load->view('VistaUsuarios/content/userUpdate', array(
						'id' => $datos->id_trb,			
						'rango' => $datos->id_tp_trb,		
						'email' => $datos->email_trb,		
						'nombre' => $datos->nombre_trb,		
						'apellido' => $datos->apellido_trb,			
						'cedula' => $datos->cedula_trb,		
						'fecha' => $datos->fecha_crt_trb,			
						'hora' => $datos->hora_crt_trb,			
						'status' => $datos->status,	
						'areaAdm' => $datos->id_area_trb,
						'areaAdmSelect' => $undAdm,
						
					), TRUE),
					'footer' => $this->load->view('VistaUsuarios/layout/footerUpdate', '', TRUE),
				);

				$this->load->view('VistaUsuarios/vistaIUsuarios', $data);
			}
		} else {
			redirect(base_url());
		}
	}

	public function GuardarUser()	{
		//---------------Elementos del Formulario-------------------------------------------------------------
		$idU = $this->input->post('idU');
		$rangoU = $this->input->post('rangoU');
		$emailU = $this->input->post('emailU');
		$nombreU = $this->input->post('nombreU');
		$apellidoU = $this->input->post('apellidoU');
		$cedulaU = $this->input->post('cedulaU');
		$undAdmU = $this->input->post('undAdmU');
		$statusU = $this->input->post('statusU');

		//-------------------Validacion----------------------------------------------------------

		$config = userUpdate_rules();
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('', '');

		if ($this->form_validation->run() === FALSE) {
			$error = array(
				'rango' => form_error('rangoU'),
				'email' => form_error('emailU'),
				'nombre' => form_error('nombreU'),
				'apellido' => form_error('apellidoU'),
				'cedula' => form_error('cedulaU'),
				'undAdm' => form_error('undAdmU'),
				'status' => form_error('statusU'),
			);
			echo json_encode($error);
			$this->output->set_status_header(400);
			exit;
		} else {

			// id_trb			
			// id_tp_trb			
			// id_adm_trb			
			// email_trb			
			// nombre_trb			
			// apellido_trb			
			// cedula_trb			
			// password_trb			
			// fecha_crt_trb			
			// hora_crt_trb			
			// status
			
			$data = array(
				'id_tp_trb' => $rangoU,
				'email_trb' => $emailU,
				'nombre_trb' => $nombreU,
				'apellido_trb' => $apellidoU,
				'cedula_trb' => $cedulaU,
				'id_adm_trb' => $undAdmU,
				'status' => $statusU,
			);

			if (!$this->ModelCreate->update('trabajador', $data, 'id_trb', $idU)) {
				echo json_encode(array('msg' => 'Hubo un Error al Crear el Elemento'));
				$this->output->set_status_header(401);
				exit;
			} else {
				echo json_encode(array("url" => base_url('controlInv')));
			}
		}
	}
}
