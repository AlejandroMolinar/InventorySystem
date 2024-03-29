<?php
/* ===========================================================================================
    Archivo: ControlInventario.php
    Descripcion: Controlador para el Control de Inventario de Bienes.
    Fecha de Creacion: 20-04-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ControlInventario extends CI_Controller{
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

				$range = $this->session->range;

				$data = $this->ModelInventario->GetTable('inventario', '*');
				$datatotal = array();

				foreach ($data as $items) {

					$datos = array(
						'id' => $items->id_bien,
						'marca' => $this->GetElements('marca', 'den_com_marc', 'cod_marc', $items->cod_marc),
						'modelo' => $this->GetElements('modelo', 'den_mod', 'id_mod', $items->id_mod_bien),
						'serial' => $items->serial_bien,
						'numBien' => $this->GetElements('bien_mue', 'num_bien_mue', 'id_bien_mue', $items->id_num_bien),
						'color' => $this->GetElements('colores', 'desc_col', 'id_col', $items->id_clr_bien),
						'componente' => $this->GetElements('tp_comp', 'mat_tp_comp', 'id_tp_comp', $items->id_tpc_bien),
						'undAdm' => $this->GetElements('uni_adm', 'desc_uni_adm', 'id_uni_adm', $items->id_adm_bien),
						'trabajador' => $this->GetElements('trabajador', 'nombre_trb, apellido_trb', 'id_trb', $items->id_trb_bien),
						'estado' => $this->GetElements('estado', 'desc_est', 'id_est',  $items->id_est_bien),
						'ciudad' => $this->GetElements('ciudad', 'desc_ciu', 'id_ciu', $items->id_ciu_bien),
						'municipio' => $this->GetElements('municipio', 'desc_mun', 'id_mun', $items->id_mun_bien),
						'parroquia' => $this->GetElements('parroquia', 'desc_parr', 'id_parr', $items->id_parr_bien),
						'fecha' =>  $items->fec_crt_inv,
						'hora' => $items->hor_crt_inv,
						'status' => $items->status,
					);
					array_push($datatotal, $datos);
				}

				if ($range == 1) {
					$view = $this->load->view('VistaPrincipal/admin/inventario_admin', array('dataTable' => $datatotal, 'range' => $range), TRUE);
				} else {
					$view = $this->load->view('VistaPrincipal/user/inventario_user', array('dataTable' => $datatotal), TRUE);
				}
				$data = array(
					'head' => $this->load->view('VistaPrincipal/layout/head', '', TRUE),
					'nav' => $this->load->view('VistaPrincipal/layout/navbar', '', TRUE),
					'content' => $view,
					'side' => $this->load->view('VistaPrincipal/layout/sidebar', '', TRUE),
					'footer' => $this->load->view('VistaPrincipal/layout/footer', '', TRUE),
				);
		
				$this->load->view('VistaPrincipal/vistaInventario', $data);
			}
		} else {
			redirect(base_url());
		}
	}
	public function GetElements($table, $select, $key, $item){
		return $this->ModelInventario->GetTables($table, $select, $key, $item);
	}

}
