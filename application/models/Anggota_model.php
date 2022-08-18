<?php

class Anggota_model extends CI_model
{
    public function getAllAnggota()
    {
        return $this->db->get('anggota')->result_array();
    }

    public function tambahDataAnggota()
    {
        $data = [
            "nama_anggota" => $this->input->post('nama', true),
            "email" => $this->input->post('email', true),
            "alamat_anggota" => $this->input->post('alamat', true),
            "no_telp_anggota" => $this->input->post('no_telp', true),
            "jk_anggota" => $this->input->post('jk', true),
            "jurusan_anggota" => $this->input->post('jurusan', true),
        ];

        $this->db->insert('anggota', $data);
    }

    public function hapusDataAnggota($id_anggota)
    {
        $this->db->where('id_anggota', $id_anggota);
        $this->db->delete('anggota');
    }

    public function getAnggotaById($id_anggota)
    {
        return $this->db->get_where('anggota', ['id_anggota' => $id_anggota])->row_array();
    }

    public function ubahDataAnggota()
    {
        $data = [
            "nama_anggota" => $this->input->post('nama', true),
            "email" => $this->input->post('email', true),
            "alamat_anggota" => $this->input->post('alamat', true),
            "no_telp_anggota" => $this->input->post('no_telp', true),
            "jk_anggota" => $this->input->post('jk', true),
            "jurusan_anggota" => $this->input->post('jurusan', true),
        ];

        $this->db->where('id_anggota', $this->input->post('id_anggota'));
        $this->db->update('anggota', $data);
    }

    public function cariDataAnggota()
    {
        $keyword = $this->input->post('keyword', true);
        $this->db->like('nama_anggota', $keyword);
        $this->db->or_like('email', $keyword);
        $this->db->or_like('alamat_anggota', $keyword);
        $this->db->or_like('jurusan_anggota', $keyword);
        return $this->db->get('anggota')->result_array();
    }
}
