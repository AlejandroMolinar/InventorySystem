<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->helper(array('auth/login', 'auth/register'));
		$this->load->model('Login_model');
		

	}
	public function index(){
		$data['url']= main_menu();
		$this->load->view('login', $data);
	}
	public function create(){

		// SignIn
		$email_si = $this->input->post('txt_ema_l');
		$password_si = $this->input->post('txt_pas_l');
		$recordar = $this->input->post('chk_kpm');
		
		// SignUp
		$nombre_sp = $this->input->post('txt_nom');
		$apellido_sp = $this->input->post('txt_ape');
		$cedula_sp = $this->input->post('txt_ced');
		$area_sp = $this->input->post('txt_are');
		$email_sp = $this->input->post('txt_ema_r');
		$password_sp = $this->input->post('txt_pas_r');
		$rep_password_sp = $this->input->post('txt_rep_pas');

		// Login
		if($email_si!=NULL && $password_si!=NULL){
			
			$config= login_rules();
			$this->form_validation->set_rules($config);
			$this->form_validation->set_error_delimiters('', '');
			
			if ($this->form_validation->run() === FALSE){
				$error= array(
					'email' => form_error('txt_ema_l'),
					'password' => form_error('txt_pas_l'),
				);
				echo json_encode($error);
				$this->output->set_status_header(400);
			}
			else{
				$error="Ingresado";
				echo json_encode($error);

				// $data_si= array(
				// 	'email_trb' => $email_si,
				// 	'password_trb' => $password_si
				// );
				// $this->Login_model->read($data_si);
			
			}
		}
		
		//Registro
		else if($email_sp!=NULL && $password_sp!=NULL && $rep_password_sp!=NULL){
	
			$config= register_rules();
			$this->form_validation->set_rules($config);
			
			if ($this->form_validation->run() == FALSE){
				$this->load->view('login');
			}
			else{
				$data_sp= array(
					'email_trb' => $email_sp,
					'nombre_trb' => $nombre_sp,
					'apellido_trb' => $apellido_sp,
					'cedula_trb' => $cedula_sp,
					'password_trb' => $password_sp,
					'area_trb' => $area_sp
				);
				
				if(!$this->Login_model->create($data_sp)){
					$data['msg']="Ocurrrio un error al enviar los datos";
					$this->load->view('login', $data);
				}

				$data['msg']="Se registro correctamente el Usuario";
				$this->load->view('login', $data);
	
			}

			
		}else{
			$error="Campos de Textos Vacios";
			$this->output->set_status_header(400);
			echo json_encode($error);
		}
	}

}
