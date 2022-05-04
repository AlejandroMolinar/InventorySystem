<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ControlInventario extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->helper(array('auth/login', 'auth/register'));
		$this->load->model('Login_model');
		$this->load->library('session');

	}
	public function index()
	{
		$data['url'] = main_menu();
		$this->load->view('inventario', $data);
	}
	
    public function inventario()
	{

    }
}
