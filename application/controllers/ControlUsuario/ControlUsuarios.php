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

				$dataTotal= array();
				foreach ($dataTrb as $items) {
					$data= array(
						'id' => $items->id_trb,
						'rango' => $items->id_tp_trb,
						'email' => $items->email_trb,
						'nombre' => $items->nombre_trb,
						'apellido' => $items->apellido_trb,
						'cedula' => $items->cedula_trb,
						'areaAdm' => $this->ModelInventario->GetTables('uni_adm', 'desc_uni_adm', 'id_uni_adm', $items->id_adm_trb),
						'fecha' => $items->fecha_crt_trb,
						'hora' => $items->hora_crt_trb ,
						'status' => $items->status,
					);

					array_push($dataTotal, $data);
				}

				$data = array(
					'head' => $this->load->view('VistaUsuarios/layout/head', '', TRUE),
					'nav' => $this->load->view('VistaUsuarios/layout/navbar', '', TRUE),
					'content' => $this->load->view('VistaUsuarios/admin/tablaUsuarios', array('dataTable' => $dataTotal), TRUE),
					'footer' => $this->load->view('VistaUsuarios/layout/footer', '', TRUE),
				);
		
				$this->load->view('VistaUsuarios/vistaIUsuarios', $data);
			}
		} else {
			redirect(base_url());
		}
	}


}
