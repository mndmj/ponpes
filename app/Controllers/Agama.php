<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelAgama;
use CodeIgniter\HTTP\Request;

class Agama extends BaseController
{
    public function __construct()
    {
        $this->ModelAgama = new ModelAgama();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Agama',
            'agama' => $this->ModelAgama->findAll(),
        ];
        return view('admin/view_agama', $data);
    }

    public function insertData()
    {
        $data = [
            'agama' => $this->request->getPost('agama'),
        ];
        $this->ModelAgama->insert($data);
        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('agama');
    }

    public function editData($id_agama)
    {
        $data = [
            'agama' => $this->request->getPost('agama'),
        ];
        $this->ModelAgama->update($id_agama, $data);
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('agama');
    }

    public function deleteData($id_agama)
    {
        $data = [
            'id_agama' => $id_agama,
        ];
        $this->ModelAgama->delete($data);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('agama');
    }
}
