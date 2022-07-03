<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelStatusDiKeluarga;
use CodeIgniter\HTTP\Request;

class StatusDiKeluarga extends BaseController
{
    public function __construct()
    {
        $this->ModelStatusDiKeluarga = new ModelStatusDiKeluarga();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Status di keluarga',
            'statusdikeluarga' => $this->ModelStatusDiKeluarga->findAll(),
        ];
        return view('admin/view_StatusDiKeluarga', $data);
    }

    public function insertData()
    {
        $data = [
            'status' => $this->request->getPost('status'),
        ];
        $this->ModelStatusDiKeluarga->insert($data);
        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('statusdikeluarga');
    }

    public function editData($id_status)
    {
        $data = [
            'status' => $this->request->getPost('status'),
        ];
        $this->ModelStatusDiKeluarga->update($id_status, $data);
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('statusdikeluarga');
    }

    public function deleteData($id_status)
    {
        $data = [
            'id_status' => $id_status,
        ];
        $this->ModelStatusDiKeluarga->delete($data);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('statusdikeluarga');
    }
}
