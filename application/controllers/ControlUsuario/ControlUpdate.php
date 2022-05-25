<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ControlUpdate extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('ModeloCreate/ModelCreate');
		$this->load->helper(array('auth/fromUpdate'));
	}
	public function index($id){
		if ($this->session->userdata('is_logged')) {

			$timeLog = $this->session->time;
			$timeNow = time();

			if ($timeNow - $timeLog >= 300) {
				session_destroy();
				redirect(base_url());
			} else {

				$datos = $this->ModelCreate->GetTables('trabajador', '*', 'id_trb', $id);

				//------------------Envio de Datos-----------------------------------------------------------

				$data = array(
					'head' => $this->load->view('VistaUsuarios/layout/head', '', TRUE),
					'nav' => $this->load->view('VistaUsuarios/layout/navbar', '', TRUE),
					'content' => $this->load->view('VistaUsuarios/content/formUpdate', array(
						'id' => $datos->id_trb,			
						'rango' => $datos->id_tp_trb,		
						'email' => $datos->email_trb,		
						'nombre' => $datos->nombre_trb,		
						'apellido' => $datos->apellido_trb,			
						'cedula' => $datos->cedula_trb,		
						'fecha' => $datos->fecha_crt_trb,			
						'hora' => $datos->hora_crt_trb,			
						'status' => $datos->status,	
						'areaAdm' => $datos->area_trb,
					), TRUE),
					'footer' => $this->load->view('VistaUsuarios/layout/footerUpdate', '', TRUE),
				);

				$this->load->view('VistaUsuarios/vistaCreate', $data);
			}
		} else {
			redirect(base_url());
		}
	}

	public function GuardarUp()	{
		//---------------Elementos del Formulario-------------------------------------------------------------
		$idF = $this->input->post('idS');
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
		$statusF = $this->input->post('statusS');

		//-------------------Validacion----------------------------------------------------------
		$datosBien = $this->ModelCreate->GetTables('inventario', 'id_num_bien', 'id_inv_bien', $idF);
		//-------------------Validacion----------------------------------------------------------

		$config = fromUpdate_rules();
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('', '');

		if ($this->form_validation->run() === FALSE) {
			$error = array(
				'serial' => form_error('serialS'),
				'numBien' => form_error('numBienS'),
			);
			echo json_encode($error);
			$this->output->set_status_header(400);
			exit;
		} else {

			if (!$this->ModelCreate->update('bien_mue', array('num_bien_mue' => $numBienF), 'id_bien_mue', $datosBien->id_num_bien)) {
				echo json_encode(array('msg' => 'Hubo un Error al Crear el Elemento'));
				$this->output->set_status_header(401);
				exit;
			}

			$data = array(
				'cod_marc' => $marcaF,
				'id_mod_bien' => $modeloF,
				'serial_bien' => $serialF,
				'id_num_bien' => $datosBien->id_num_bien,
				'id_clr_bien' => $colorF,
				'id_tpc_bien' => $componenteF,
				'id_adm_bien' => $undAdmF,
				'id_trb_bien' => $trabajadorF,
				'id_ciu_bien' => $ciudadF,
				'id_mun_bien' => $municipioF,
				'id_parr_bien' => $parroquiaF,
				'status' => $statusF,
			);

			if (!$this->ModelCreate->update('inventario', $data, 'id_inv_bien', $idF)) {
				echo json_encode(array('msg' => 'Hubo un Error al Crear el Elemento'));
				$this->output->set_status_header(401);
				exit;
			} else {
				echo json_encode(array("url" => base_url('controlInv')));
			}
		}
	}
}
