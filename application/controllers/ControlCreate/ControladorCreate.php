<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ControladorCreate extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('ModeloCreate/ModelCreate');
	}
	public function index(){
		$this->load->view('VistaCreate/vistaCreate');
        
	}

}
