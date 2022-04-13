<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->library('form_validation');
    }
    public function index()
    {
        $this->form_validation->set_rules('nombre' ,'Nombre', 'required');
        $this->form_validation->set_rules('password' ,'Password', 'required|callback_verifica');
        if($this->form_validation->run() == false)
        {
            $data['main_title'] = 'Biblioteca';
            $data['title2'] = 'Registro';

            $this->load->view('templates/header', $data);
            $this->load->view('login');
            $this->load->view('templates/footer');
        }
        else
        {
            redirect('editoriales/index');
        }
    }
    public function verifica()
    {
        $nombre = $this->input->post('nombre');
        $password = $this->input->post('password');

        if($this->login_model->login($nombre, $password))
        {
            redirect('editoriales/index');
        }
        else
        {
            $this->form_validation->set_message('verifica','Contraseña incorrecta');
            redirect('login');
        }
    }
}
