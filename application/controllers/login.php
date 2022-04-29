<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->helper(array('auth/login', 'auth/register'));
		$this->load->model('Login_model');
	}
	public function index()
	{
		$data['url'] = main_menu();
		$this->load->view('login', $data);
	}
	public function create()
	{

		// SignIn
		$email_si = $this->input->post('txt_ema_l');
		$password_si = $this->input->post('txt_pas_l');
		$recordar = $this->input->post('chk_kpm');

		// SignUp
		$nombre_sp = $this->input->post('txt_nom_r');
		$apellido_sp = $this->input->post('txt_ape_r');
		$cedula_sp = $this->input->post('txt_ced_r');
		$area_sp = $this->input->post('opcion_area_r');
		$email_sp = $this->input->post('txt_ema_r');
		$password_sp = $this->input->post('txt_pas_r');
		$rep_password_sp = $this->input->post('txt_rep_pas');

		// Login
		if ($email_si != NULL || $password_si != NULL) {

			$config = login_rules();
			$this->form_validation->set_rules($config);
			$this->form_validation->set_error_delimiters('', '');

			if ($this->form_validation->run() === FALSE) {
				$error = array(
					'email_si' => form_error('txt_ema_l'),
					'password_si' => form_error('txt_pas_l'),
				);
				echo json_encode($error);
				$this->output->set_status_header(400);
			} else {
				$error = "Ingresado";
				echo json_encode($error);

				// $data_si= array(
				// 	'email_trb' => $email_si,
				// 	'password_trb' => $password_si
				// );
				// $this->Login_model->read($data_si);

			}
		}

		//Registro
		else if (
			$email_sp != NULL || $password_sp != NULL || $rep_password_sp != NULL || $nombre_sp != NULL
			|| $apellido_sp != NULL || $cedula_sp != NULL || $area_sp != NULL
		) {

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
			} else {

				if ($password_sp == $rep_password_sp) {
					switch ($area_sp) {
						case '1':
							$area_sp = "Desarrollo de Software";
							break;
						case '2':
							$area_sp = "Telecom";
							break;
						case '3':
							$area_sp = "Servidores";
							break;
						case '4':
							$area_sp = "Soporte Tecnico";
							break;
						case '5':
							$area_sp = "Cobro Pasaje";
							break;
					}

					$data_sp = array(
						'email_trb' => $email_sp,
						'nombre_trb' => $nombre_sp,
						'apellido_trb' => $apellido_sp,
						'area_trb' => $area_sp,
						'cedula_trb' => $cedula_sp,
						'password_trb' => $password_sp,

					);
					if (!$this->Login_model->create($data_sp)) {
						$errctv = array(
							'err_registro' => "Hubo un Error en el Registro"
						);
						echo json_encode($errctv);
						$this->output->set_status_header(400);
					}

					// $errctv = array(
					// 	'success_reg' => "Se registró correctamente"
					// );
					// echo json_encode($errctv);
					// // $this->output->set_status_header(200);
				} else {
					$error = array(
						'errcts' => "Las contraseñas no son iguales"
					);
					echo json_encode($error);
					$this->output->set_status_header(400);
				}
			}
		} else {
			$errctv = array(
				'errvacio' => "Campos de Textos Vacios"
			);
			echo json_encode($errctv);
			$this->output->set_status_header(400);
		}
	}
}
