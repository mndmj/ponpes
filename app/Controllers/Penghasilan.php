<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelPenghasilan;

class Penghasilan extends BaseController
{
    public function __construct()
    {
        $this->ModelPenghasilan = new ModelPenghasilan();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Penghasilan',
            'penghasilan' => $this->ModelPenghasilan->findAll(),
        ];
        return view('admin/view_penghasilan', $data);
    }
    public function insertData()
    {
        $data = [
            'penghasilan' => $this->request->getPost('penghasilan'),
        ];
        $this->ModelPenghasilan->insert($data);
        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('penghasilan');
    }

    public function editData($id_penghasilan)
    {
        $data = [
            'penghasilan' => $this->request->getPost('penghasilan'),
        ];
        $this->ModelPenghasilan->update($id_penghasilan, $data);
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('penghasilan');
    }

    public function deleteData($id_penghasilan)
    {
        $this->ModelPenghasilan->delete($id_penghasilan);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('penghasilan');
    }
}
