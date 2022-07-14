<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelBaner extends Model
{
    protected $table      = 'tbl_baner';
    protected $primaryKey = 'id_baner';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = ['id_baner', 'ket', 'baner'];

    //----estimasi-----
    public function jumlahPendaftar()
    {
        return $this->db->table('tbl_siswa')
            ->where('tahun', date('Y'))
            ->where('stat_pendaftaran', '1')
            ->countAllResults();
    }

    public function jumlahLk()
    {
        return $this->db->table('tbl_siswa')
            ->where('tahun', date('Y'))
            ->where('stat_pendaftaran', '1')
            ->where('jk', 'L')
            ->countAllResults();
    }

    public function jumlahPr()
    {
        return $this->db->table('tbl_siswa')
            ->where('tahun', date('Y'))
            ->where('stat_pendaftaran', '1')
            ->where('jk', 'P')
            ->countAllResults();
    }
}
