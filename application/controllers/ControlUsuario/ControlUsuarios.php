<?php
/* ===========================================================================================
    Archivo: ControlUsuarios.php
    Descripcion: Controlador para la Gestion de Usuarios.
    Fecha de Creacion: 20-04-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ControlUsuarios extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('ModeloInventario/ModelInventario');
	}
	public function index(){
		if ($this->session->userdata('is_logged')) {

			$timeLog = $this->session->time;
			$timeNow = time();

			if ($timeNow - $timeLog >= 300) {
				session_destroy();
				redirect(base_url());

			} else {
				$timeLog = time();

				$dataTrb = $this->ModelInventario->GetTable('trabajador', '*');

								
				$data = array(
					'head' => $this->load->view('VistaUsuarios/layout/head', '', TRUE),
					'nav' => $this->load->view('VistaUsuarios/layout/navbar', '', TRUE),
					'content' => $this->load->view('VistaUsuarios/admin/tablaUsuarios', array('dataTable' => $dataTrb), TRUE),
					'footer' => $this->load->view('VistaUsuarios/layout/footer', '', TRUE),
				);
		
				$this->load->view('VistaUsuarios/vistaIUsuarios', $data);
			}
		} else {
			redirect(base_url());
		}
	}


}
