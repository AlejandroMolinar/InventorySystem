<?php
/* ===========================================================================================
    Archivo: Login.php
    Descripcion: Controlador principal de Login.
    Fecha de Creacion: 12-04-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->helper(array('auth/login', 'auth/register'));
		$this->load->model('ModeloLogIn/Login_model');

	}
	public function index(){
		$undAdm = $this->Login_model->GetTable('uni_adm', 'id_uni_adm, desc_uni_adm');


		$data= array(
			'url' => main_menu(),
			'undAdm' => $undAdm,
		);
		$this->load->view('VistaLogIn/login', $data);
	}
	public function create(){

		// SignIn
		$email_si = $this->input->post('txt_ema_l');
		$password_si = $this->input->post('txt_pas_l');

		// SignUp
		$nombre_sp = $this->input->post('txt_nom_r');
		$apellido_sp = $this->input->post('txt_ape_r');
		$cedula_sp = $this->input->post('txt_ced_r');
		$area_sp = $this->input->post('opcion_area_r');
		$email_sp = $this->input->post('txt_ema_r');
		$password_sp = $this->input->post('txt_pas_r');
		$rep_password_sp = $this->input->post('txt_rep_pas');

		//-----------------------------Ingreso------------------------------------------------

		if ($email_si != NULL || $password_si != NULL) {

			$config = login_rules();
			$this->form_validation->set_rules($config);
			$this->form_validation->set_error_delimiters('', '');

			if ($this->form_validation->run() == FALSE) {
				$error = array(
					'email_si' => form_error('txt_ema_l'),
					'password_si' => form_error('txt_pas_l'),
				);
				echo json_encode($error);
				$this->output->set_status_header(400);
				exit;

			} else {

				if(!$data_log = $this->Login_model->user($email_si)){
					echo json_encode(array('msg' => "El usuario o la Clave no son validas"));
					$this->output->set_status_header(401);
					exit;
					
				}else{
					
					if (!password_verify($password_si, $data_log->password_trb)) {
						echo json_encode(array('msg' => "La Clave no es valida"));
						$this->output->set_status_header(401);
						exit;
	
					} else {
						$data= array(
							'id' => $data_log->id_trb,
							'range' => $data_log->id_tp_trb,
							'nombre_user' => $data_log->nombre_trb,
							'apellido_user' => $data_log->apellido_trb,
							'status' => $data_log->status,
							'is_logged' => TRUE,
							'time' => time(),
						);
						$this->session->set_userdata($data);
						// $this->session->set_flashdata('msg', 'Sistema de Control de Inventario, '.$data['nombre_user']);
						echo json_encode(array("url" => base_url("controlInv")));
	
					}

				}
			}
		}

		//-----------------------------Registro------------------------------------------------
		else if ($email_sp != NULL || $password_sp != NULL || $rep_password_sp != NULL || $nombre_sp != NULL
			|| $apellido_sp != NULL || $cedula_sp != NULL || $area_sp != NULL) {

			$config = register_rules();
			$this->form_validation->set_rules($config);
			$this->form_validation->set_error_delimiters('', '');

			//-----------------------------------------------------------------------
			if ($this->form_validation->run() == FALSE) {
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

				if ($password_sp == $rep_password_sp) {
					
					$password_sp = password_hash($password_sp, PASSWORD_DEFAULT);

					$data_sp = array(
						'id_tp_trb' => 2,
						'email_trb' => $email_sp,
						'nombre_trb' => $nombre_sp,
						'apellido_trb' => $apellido_sp,
						'id_adm_trb' => $area_sp,
						'cedula_trb' => $cedula_sp,
						'password_trb' => $password_sp,

					);

					if (!$this->Login_model->create($data_sp)) {
						echo json_encode(array('err_registro' => "Hubo un Error en el Registro"));
						$this->output->set_status_header(401);
						exit;

					} else {
						echo json_encode(array("url" => base_url()));
					}
				} else {
					echo json_encode(array('errcts' => "Las Claves no son iguales"));
					$this->output->set_status_header(400);
					exit;
				}
			}
		} else {

			echo json_encode(array('errvacio' => "Campos de Textos Vacios"));
			$this->output->set_status_header(400);
			exit;
		}
	}

	//-----------------------------Cerrar Sesion------------------------------------------------
	public function logout(){
		$vars= array('id','rage','nombre_user','apellido_user','status','is_logged');
		$this->session->unset_userdata($vars);
		$this->session->sess_destroy();
		redirect(base_url());
	}
}
