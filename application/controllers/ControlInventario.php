<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ControlInventario extends CI_Controller
{
	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('Login_model');
		$this->load->library('session');

	}
	public function index(){
		if($this->session->userdata('is_logged')){
			$this->load->view('inventario');
		}else{
			redirect(base_url());
		}
	}
	
    public function inventario(){

    }
}
