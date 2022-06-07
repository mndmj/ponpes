<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelPekerjaan;
use CodeIgniter\HTTP\Request;

class Pekerjaan extends BaseController
{
    public function __construct()
    {
        $this->ModelPekerjaan = new ModelPekerjaan();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Pekerjaan',
            'pekerjaan' => $this->ModelPekerjaan->findAll(),
        ];
        return view('admin/view_pekerjaan', $data);
    }

    public function insertData()
    {
        $data = [
            'pekerjaan' => $this->request->getPost('pekerjaan'),
        ];
        $this->ModelPekerjaan->insert($data);
        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('pekerjaan');
    }

    public function editData($id_pekerjaan)
    {
        $data = [
            'pekerjaan' => $this->request->getPost('pekerjaan'),
        ];
        $this->ModelPekerjaan->update($id_pekerjaan, $data);
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('pekerjaan');
    }

    public function deleteData($id_pekerjaan)
    {
        $this->ModelPekerjaan->delete($id_pekerjaan);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('pekerjaan');
    }
}
