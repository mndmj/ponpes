<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelJalurMasuk;

class JalurMasuk extends BaseController
{
    public function __construct()
    {
        $this->ModelJalurMasuk = new ModelJalurMasuk();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Jalur Masuk',
            'jalurmasuk' => $this->ModelJalurMasuk->findAll(),
        ];
        return view('admin/view_jalur_masuk', $data);
    }

    public function insertData()
    {
        $data = [
            'jalur_masuk' => $this->request->getPost('jalur_masuk'),
            'kuota' => $this->request->getPost('kuota'),
        ];
        $this->ModelJalurMasuk->insert($data);
        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('jalurmasuk');
    }

    public function editData($id_jalur_masuk)
    {
        $data = [
            'id_jalur_masuk' => $id_jalur_masuk,
            'jalur_masuk' => $this->request->getPost('jalur_masuk'),
            'kuota' => $this->request->getPost('kuota'),
        ];
        $this->ModelJalurMasuk->update($id_jalur_masuk, $data);
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('jalurmasuk');
    }

    public function deleteData($id_jalur_masuk)
    {
        $data = [
            'id_jalur_masuk' => $id_jalur_masuk,
        ];
        $this->ModelJalurMasuk->delete($data);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('jalurmasuk');
    }
}
