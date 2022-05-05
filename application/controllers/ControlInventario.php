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

			$data= array(
				'head' => $this->load->view('layout/head','', TRUE),
				'nav' => $this->load->view('layout/navbar','', TRUE),
				'side' => $this->load->view('layout/sidebar','', TRUE),
				'footer' => $this->load->view('layout/footer','', TRUE),
			); 

			$this->load->view('inventario', $data);

		}else{
			redirect(base_url());
		}
	}
	
    public function inventario(){

    }
}
