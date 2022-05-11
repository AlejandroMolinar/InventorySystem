<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ControladorCreate extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('ModeloCreate/ModelCreate');
	}
	public function index(){

		$data = array(
			'head' => $this->load->view('VistaCreate/layout/head', '', TRUE),
			'nav' => $this->load->view('VistaCreate/layout/navbar', '', TRUE),
			'content' => $this->load->view('VistaCreate/content/formCreate', '', TRUE),
			'footer' => $this->load->view('VistaCreate/layout/footer', '', TRUE),
		);

		$this->load->view('VistaCreate/vistaCreate', $data);
        
	}

}
