<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelLampiran;
use CodeIgniter\HTTP\Request;

class Lampiran extends BaseController
{
    public function __construct()
    {
        $this->ModelLampiran = new ModelLampiran();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Lampiran',
            'lampiran' => $this->ModelLampiran->findAll(),
        ];
        return view('admin/view_lampiran', $data);
    }

    public function insertData()
    {
        $data = [
            'lampiran' => $this->request->getPost('lampiran'),
        ];
        $this->ModelLampiran->insert($data);
        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('lampiran');
    }

    public function editData($id_lampiran)
    {
        $data = [
            'lampiran' => $this->request->getPost('lampiran'),
        ];
        $this->ModelLampiran->update($id_lampiran, $data);
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('lampiran');
    }

    public function deleteData($id_lampiran)
    {
        $data = [
            'id_lampiran' => $id_lampiran,
        ];
        $this->ModelLampiran->delete($data);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('lampiran');
    }
}
