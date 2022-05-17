<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ControladorUpdate extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('ModeloCreate/ModelCreate');
		$this->load->helper(array('auth/fromUpdate'));
	}
	public function index($id){
		$datos= $this->ModelCreate->GetTables('inventario', '*', 'id_inv_bien', $id);

		//----------------------Querys-------------------------------------------------------
		$marca = $this->ModelCreate->GetTable('marca', 'cod_marc, den_com_marc');
		$modelo = $this->ModelCreate->GetTable('modelo', 'id_mod, den_mod');
		$color = $this->ModelCreate->GetTable('colores', 'id_col, desc_col');
		$componente = $this->ModelCreate->GetTable('tp_comp', 'id_tp_comp, mat_tp_comp');
		$undAdm = $this->ModelCreate->GetTable('uni_adm', 'id_uni_adm, desc_uni_adm');
		$trabajador = $this->ModelCreate->GetTable('trabajador', 'id_trb, nombre_trb, apellido_trb');
		$ciudad = $this->ModelCreate->GetTable('ciudad', 'id_ciu, desc_ciu');
		$municipio = $this->ModelCreate->GetTable('municipio', 'id_mun, desc_mun');
		$parroquia = $this->ModelCreate->GetTable('parroquia', 'id_parr, desc_parr');
		
		$numBien= $this->ModelCreate->GetTables('bien_mue', 'num_bien_mue', 'id_bien_mue', $datos->id_num_bien);

		//------------------Envio de Datos-----------------------------------------------------------

		$data = array(
			'head' => $this->load->view('VistaCreate/layout/headUpdate', '', TRUE),
			'nav' => $this->load->view('VistaCreate/layout/navbar', '', TRUE),
			'content' => $this->load->view('VistaCreate/content/formUpdate', array(
				'marca' => $marca,
				'modelo' => $modelo,
				'numBien' => $numBien->num_bien_mue,
				'color' => $color,
				'componente' => $componente,
				'undAdm' => $undAdm,
				'trabajador' => $trabajador,
				'ciudad' => $ciudad,
				'municipio' => $municipio,
				'parroquia' => $parroquia,
				'dataInv' => $datos,
			), TRUE),
			'footer' => $this->load->view('VistaCreate/layout/footerUpdate', '', TRUE),
		);

		$this->load->view('VistaCreate/vistaCreate', $data);
	}

	public function GuardarUp(){

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
		$datosBien= $this->ModelCreate->GetTables('inventario', 'id_num_bien', 'id_inv_bien', $idF);
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

			$data= array(
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

			if(!$this->ModelCreate->update('inventario', $data, 'id_inv_bien', $idF)){
				echo json_encode(array('msg' => 'Hubo un Error al Crear el Elemento'));
				$this->output->set_status_header(401);
				exit;

			}else{
				echo json_encode(array("url" => base_url('controlInv')));
			}
			
		}
	}


}
