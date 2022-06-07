<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelPendidikan;

class Pendidikan extends BaseController
{
    public function __construct()
    {
        $this->ModelPendidikan = new ModelPendidikan();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Pendidikan',
            'pendidikan' => $this->ModelPendidikan->findAll(),
        ];
        return view('admin/view_pendidikan', $data);
    }
    public function insertData()
    {
        $data = [
            'pendidikan' => $this->request->getPost('pendidikan'),
        ];
        $this->ModelPendidikan->insert($data);
        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('pendidikan');
    }

    public function editData($id_pendidikan)
    {
        $data = [
            'pendidikan' => $this->request->getPost('pendidikan'),
        ];
        $this->ModelPendidikan->update($id_pendidikan, $data);
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('pendidikan');
    }

    public function deleteData($id_pendidikan)
    {
        $this->ModelPendidikan->delete($id_pendidikan);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('pendidikan');
    }
}
