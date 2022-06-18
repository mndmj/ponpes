<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelTa;

class Ta extends BaseController
{
    public function __construct()
    {
        $this->ModelTa = new ModelTa();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Tahun Ajaran',
            'ta' => $this->ModelTa->findAll(),
        ];
        return view('admin/view_ta', $data);
    }
    public function insertData()
    {
        $data = [
            'ta' => $this->request->getPost('ta'),
            'tahun' => $this->request->getPost('tahun'),
        ];
        $this->ModelTa->insert($data);
        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('ta');
    }

    public function editData($id_ta)
    {
        $data = [
            'ta' => $this->request->getPost('ta'),
            'tahun' => $this->request->getPost('tahun'),
        ];
        $this->ModelTa->update($id_ta, $data);
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('ta');
    }

    public function deleteData($id_ta)
    {
        $this->ModelTa->delete($id_ta);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('ta');
    }

    public function statusAktif($id_ta)
    {
        $data = [
            'id_ta' => $id_ta,
            'status' => 1
        ];
        $this->ModelTa->resetStatus();
        $this->ModelTa->update($id_ta, $data);
        session()->setFlashdata('tambah', 'Status TA berhasil diubah..!!');
        return redirect()->to('ta');
    }

    public function statusNonaktif($id_ta)
    {
        $data = [
            'id_ta' => $id_ta,
        ];
        $this->ModelTa->resetStatus();
        session()->setFlashdata('tambah', 'Status TA berhasil diubah..!!');
        return redirect()->to('ta');
    }
}
