<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelJurusan;

class Jurusan extends BaseController
{
    public function __construct()
    {
        $this->ModelJurusan = new ModelJurusan();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Jurusan',
            'jurusan' => $this->ModelJurusan->findAll(),
        ];
        return view('admin/view_jurusan', $data);
    }
    public function insertData()
    {
        $data = [
            'jurusan' => $this->request->getPost('jurusan'),
        ];
        $this->ModelJurusan->insert($data);
        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('jurusan');
    }

    public function editData($id_jurusan)
    {
        $data = [
            'jurusan' => $this->request->getPost('jurusan'),
        ];
        $this->ModelJurusan->update($id_jurusan, $data);
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('jurusan');
    }

    public function deleteData($id_jurusan)
    {
        $this->ModelJurusan->delete($id_jurusan);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('jurusan');
    }
}
