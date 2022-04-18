<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->helper(array('login', 'url'));
	}
	public function index(){
		$data['url']= main_menu();
		$this->load->view('login', $data);
		//$this->load->model('BBDD_SI.php');
		
		//$this->BBDD_SI->insertar(array{});

		//$this->BBDD_SI->getAll();
	
	}
	public function logadd(){
		
	
	}
}
