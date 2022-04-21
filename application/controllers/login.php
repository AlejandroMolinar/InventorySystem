<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->database();
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

		// if para las tabs
		if($email_si!=NULL && $password_si!=NULL){
			$data_si= array(
				'email_trb' => $email_si,
				'password_trb' => $password_si
			);
			// $this->Login_model->read($data_si);

		}
		else if($email_sp!=NULL && $password_sp!=NULL && $rep_password_sp!=NULL){
			
			if($password_sp==$rep_password_sp){
				$data_sp= array(
					'email_trb' => $email_sp,
					'nombre_trb' => $nombre_sp,
					'apellido_trb' => $apellido_sp,
					'cedula_trb' => $cedula_sp,
					'password_trb' => $password_sp,
					'area_trb' => $area_sp
				);
				$this->Login_model->create($data_sp);
			}else{
				$this->load->view('login');
			}
			
		}else{
			redirect('','index');
		}
	}

}
