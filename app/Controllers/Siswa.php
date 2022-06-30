<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelSiswa;
use App\Models\ModelJalurMasuk;

class Siswa extends BaseController
{
    public function __construct()
    {
        $this->ModelSiswa = new ModelSiswa();
        $this->ModelJalurMasuk = new ModelJalurMasuk();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Siswa',
            'siswa' => $this->ModelSiswa->getBiodataSiswa(),
            'jalur' => $this->ModelJalurMasuk->findAll(),
        ];
        return view('siswa/view_dashboard', $data);
    }

    public function updatePendaftaran($id_siswa)
    {
        $data = [
            'id_siswa' => $id_siswa,
            'id_jalur_masuk' => $this->request->getPost('id_jalur_masuk'),
        ];

        $this->ModelSiswa->update($id_siswa, $data);

        session()->setFlashdata('pesan', 'Data pendaftaran berhasil diedit..!!');
        return redirect()->to('siswa');
    }
}
