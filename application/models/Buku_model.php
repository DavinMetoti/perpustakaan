<?php

class Buku_model extends CI_model
{
    public function getAllBuku()
    {
        return $this->db->get('buku')->result_array();
    }
}
