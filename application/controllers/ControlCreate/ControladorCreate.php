<?php
/* ===========================================================================================
    Archivo: ControladorCreate.php
    Descripcion: Controlador para la Creación de un nuevo Bienes.
    Fecha de Creacion: 1-05-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>
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
		if ($this->session->userdata('is_logged')) {

			$timeLog = $this->session->time;
			$timeNow = time();

			if ($timeNow - $timeLog >= 300) {
				session_destroy();
				redirect(base_url());
			} else {
				$marca = $this->ModelCreate->GetTable('marca', 'cod_marc, den_com_marc');
				$modelo = $this->ModelCreate->GetTable('modelo', 'id_mod, den_mod');
				$numBien = $this->ModelCreate->GetTable('bien_mue', 'id_bien_mue, num_bien_mue');
				$color = $this->ModelCreate->GetTable('colores', 'id_col, desc_col');
				$componente = $this->ModelCreate->GetTable('tp_comp', 'id_tp_comp, mat_tp_comp');
				$undAdm = $this->ModelCreate->GetTable('uni_adm', 'id_uni_adm, desc_uni_adm');
				$trabajador = $this->ModelCreate->GetTable('trabajador', 'id_trb, nombre_trb, apellido_trb');
				$estado = $this->ModelCreate->GetTable('estado', 'id_est, desc_est');
				$ciudad = $this->ModelCreate->GetTable('ciudad', 'id_ciu, desc_ciu');
				$municipio = $this->ModelCreate->GetTable('municipio', 'id_mun, id_est, desc_mun');
				$parroquia = $this->ModelCreate->GetTable('parroquia', 'id_parr, id_mun, desc_parr');

				//------------------Envio de Datos-----------------------------------------------------------

				$data = array(
					'head' => $this->load->view('VistaCreate/layout/head', '', TRUE),
					'nav' => $this->load->view('VistaCreate/layout/navbar', '', TRUE),
					'content' => $this->load->view('VistaCreate/content/formCreate', array(
						'marca' => $marca,
						'modelo' => $modelo,
						'numBien' => $numBien,
						'color' => $color,
						'componente' => $componente,
						'undAdm' => $undAdm,
						'trabajador' => $trabajador,
						'estado' => $estado,
						'ciudad' => $ciudad,
						'municipio' => $municipio,
						'parroquia' => $parroquia
					), TRUE),
					'footer' => $this->load->view('VistaCreate/layout/footer', '', TRUE),
				);

				$this->load->view('VistaCreate/vistaCreate', $data);
			}
		} else {
			redirect(base_url());
		}
	}


	public function Guardar(){

		//---------------Elementos del Formulario-------------------------------------------------------------

		//Select
		$marcaF = $this->input->post('marcaS');
		$modeloF = $this->input->post('modeloS');
		$numBienF = $this->input->post('numBienS');
		$colorF = $this->input->post('colorS');
		$componenteF = $this->input->post('componenteS');
		$undAdmF = $this->input->post('undAdmS');
		$trabajadorF = $this->input->post('trabajadorS');
		$estadoF = $this->input->post('estadoS');
		$ciudadF =  $this->input->post('ciudadS');
		$municipioF = $this->input->post('municipioS');
		$parroquiaF = $this->input->post('parroquiaS');

		//Input 
		$modeloAdd = $this->input->post('modeloAdd');
		$serialAdd = $this->input->post('serialAdd');
		$numBienAdd = $this->input->post('numBienAdd');

		//-------------------Validacion----------------------------------------------------------
		$config = fromCreate_rules();
		$this->form_validation->set_rules($config);

		//-----------------------Modelo-----------------------
		if ($modeloAdd != null) {
			$modeloI = fromModeloI_rules();
			$this->form_validation->set_rules($modeloI);
		} else {
			$modeloS = fromModeloS_rules();
			$this->form_validation->set_rules($modeloS);
		}

		//-----------------------Numero de Bien-----------------------
		if ($numBienAdd != null) {
			$numBienI = fromNumBienI_rules();
			$this->form_validation->set_rules($numBienI);
		} else {
			$numBienS = fromNumBienS_rules();
			$this->form_validation->set_rules($numBienS);
		}
		//-----------------------Delimitador----------------------
		$this->form_validation->set_error_delimiters('', '');

		if ($this->form_validation->run() == FALSE) {
			$error = array(
				'marca' => form_error('marcaS'),
				'modelo' => form_error('modeloS'),
				'modeloAdd' => form_error('modeloAdd'),
				'serial' => form_error('serialAdd'),
				'numBien' => form_error('numBienS'),
				'numBienAdd' => form_error('numBienAdd'),
				'color' => form_error('colorS'),
				'componente' => form_error('componenteS'),
				'undAdm' => form_error('undAdmS'),
				'trabajador' => form_error('trabajadorS'),
				'estado' => form_error('estadoS'),
				'ciudad' => form_error('ciudadS'),
				'municipio' => form_error('municipioS'),
				'parroquia' => form_error('parroquiaS'),
			);
			echo json_encode($error);
			$this->output->set_status_header(400);
			exit;
		} else {

			if ($modeloAdd != null) {
				if (!$this->ModelCreate->create('modelo', array('cod_marc_mod' => $marcaF, 'den_mod' => $modeloAdd))) {
					$this->badCreate($this);
				} else {
					$idModelo = $this->ModelCreate->GetTables('modelo', 'id_mod', 'den_mod', $modeloAdd);
					$modeloF = $idModelo->id_mod;
				}
			}

			if ($numBienAdd != null) {
				if (!$this->ModelCreate->create('bien_mue', array('num_bien_mue' => $numBienAdd))) {
					$this->badCreate($this);
				} else {
					$idNumBien = $this->ModelCreate->GetTables('bien_mue', 'id_bien_mue', 'num_bien_mue', $numBienAdd);
					$numBienF = $idNumBien->id_bien_mue;
				}
			}
			$data = array(
				'cod_marc' => $marcaF,
				'id_mod_bien' => $modeloF,
				'serial_bien' => $serialAdd,
				'id_num_bien' => $numBienF,
				'id_clr_bien' => $colorF,
				'id_tpc_bien' => $componenteF,
				'id_adm_bien' => $undAdmF,
				'id_trb_bien' => $trabajadorF,
				'id_est_bien' => $estadoF,
				'id_ciu_bien' => $ciudadF,
				'id_mun_bien' => $municipioF,
				'id_parr_bien' => $parroquiaF,
			);

			if (!$this->ModelCreate->create('inventario', $data)) {
				$this->badCreate($this);
			} else {
				echo json_encode(array("url" => base_url('controlInv')));
			}
		}
	}
	public function badCreate($body){
		echo json_encode(array('msg' => 'Hubo un Error al Crear el Elemento'));
		$body->output->set_status_header(401);
		exit;
	}
}
