<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
	public function index(){
		$data['url']= main_menu();
		$this->load->view('login', $data);
		
	
	}
	public function create(){
		//$this->load->model('BBDD_SI.php');
		//$this->BBDD_SI->insertar(array{});
		//$this->BBDD_SI->getAll();
		
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
		
		if($email_si!=NULL && $password_si!=NULL){
			var_dump($email_si .'/ '. $password_si);
		}
		else if($email_sp!=NULL && $password_sp!=NULL && $rep_password_sp!=NULL){
			var_dump($email_sp .'/ '. $password_sp .'/ '. $rep_password_sp);
		}
	}

}
