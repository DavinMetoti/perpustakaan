<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Anggota extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Anggota_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $this->load->model('Anggota_model');
        $data['title'] = 'Daftar Anggota';
        $data['anggota'] = $this->Anggota_model->getAllAnggota();
        if ($this->input->post('keyword')) {
            $data['anggota'] = $this->Anggota_model->cariDataAnggota();
        }
        $data['user'] = $this->db->get_where('user', ['email' =>
        $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('anggota/index', $data);
        $this->load->view('templates/footer');
    }

    public function tambah()
    {
        $data['title'] = 'Form Tambah Data Mahasiswa';

        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('alamat', 'alamat', 'required');
        $this->form_validation->set_rules('no_telp', 'no_telpon', 'required|numeric');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('anggota/tambah');
            $this->load->view('templates/footer');
        } else {
            $this->Anggota_model->tambahDataAnggota();
            $this->session->set_flashdata('flash', 'Ditambahkan');
            redirect('anggota');
        }
    }

    public function hapus($id_anggota)
    {
        $this->Anggota_model->hapusDataAnggota($id_anggota);
        $this->session->set_flashdata('flash', 'Dihapus');
        redirect('anggota');
    }

    public function detail($id_anggota)
    {
        $data['title'] = 'Detail Data Anggota';
        $data['anggota'] = $this->Anggota_model->getAnggotaById($id_anggota);
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('anggota/detail', $data);
        $this->load->view('templates/footer');
    }


    public function ubah($id_anggota)
    {
        $data['title'] = 'Form Ubah Data Mahasiswa';
        $data['anggota'] = $this->Anggota_model->getAnggotaById($id_anggota);
        $data['jk'] = ['L', 'P'];
        $data['jurusan'] = ['RPL', 'TKJ', 'TAV', 'TP'];

        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('alamat', 'alamat', 'required');
        $this->form_validation->set_rules('no_telp', 'no_telpon', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('anggota/ubah', $data);
            $this->load->view('templates/footer');
        } else {
            $this->Anggota_model->ubahDataAnggota();
            $this->session->set_flashdata('flash', 'Diubah');
            redirect('anggota');
        }
    }
}
