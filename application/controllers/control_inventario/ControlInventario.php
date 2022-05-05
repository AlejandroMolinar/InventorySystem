<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ControlInventario extends CI_Controller
{
	public function __construct(){
		parent::__construct();
		$this->load->database();

	}
	public function index(){
		if($this->session->userdata('is_logged')){
			$range = $this->session->range;
			$this->GetView($range);
			
		}else{
			redirect(base_url());
		}
	}
	
    public function GetView($range){
		
		if ($range != 1) {
			$view = $this->load->view('user/inventario_user','', TRUE);
		}else{
			$view = $this->load->view('admin/inventario_admin','', TRUE);
		}
		$data= array(
			'head' => $this->load->view('layout/head','', TRUE),
			'nav' => $this->load->view('layout/navbar','', TRUE),
			'content'=> $view,
			'side' => $this->load->view('layout/sidebar','', TRUE),
			'footer' => $this->load->view('layout/footer','', TRUE),
		); 
	
		$this->load->view('inventario', $data);
		
    }
    public function Inventario(){

    }
}
