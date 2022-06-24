<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelBaner;
use CodeIgniter\HTTP\Request;

class Bbaner extends BaseController
{
    public function __construct()
    {
        $this->ModelBaner = new ModelBaner();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Banner',
            'baner' => $this->ModelBaner->findAll(),
        ];
        return view('admin/view_baner', $data);
    }

    public function insertData()
    {
        $data = [
            'baner' => $this->request->getPost('baner'),
        ];
        $this->ModelBaner->insert($data);
        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('baner');
    }

    public function editData($id_baner)
    {
        $data = [
            'baner' => $this->request->getPost('baner'),
        ];
        $this->ModelBaner->update($id_baner, $data);
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('baner');
    }

    public function deleteData($id_baner)
    {
        $data = [
            'id_baner' => $id_baner,
        ];
        $this->ModelBaner->delete($data);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('baner');
    }
}
