<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelPpdb;

class Ppdb extends BaseController
{
    public function __construct()
    {
        $this->ModelPpdb = new ModelPpdb();
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Pendaftaran Masuk',
            'ppdb' => $this->ModelPpdb->getPpdbMasuk(),
        ];
        return view('admin/ppdb/view_masuk', $data);
    }

    public function detailData($id_siswa)
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Detail Data Siswa',
            'siswa' => $this->ModelPpdb->detailData($id_siswa),
            'berkas' => $this->ModelPpdb->lampiran($id_siswa),
        ];
        return view('admin/ppdb/view_detail', $data);
    }
}
