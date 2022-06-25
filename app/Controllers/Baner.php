<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelBaner;
use CodeIgniter\HTTP\Request;

class Baner extends BaseController
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
        $file = $this->request->getFile('baner');
        $nama_file = $file->getRandomName();
        $data = [
            'ket' => $this->request->getPost('ket'),
            'baner' => $nama_file,
        ];
        $file->move('foto_baner/', $nama_file);
        $this->ModelBaner->insert($data);

        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('baner');
    }

    public function editData($id_baner)
    {
        // jika logo tidak diganti
        $file = $this->request->getFile('baner');
        if ($file->getError() == 4) {
            $data = [
                'id_baner' => $id_baner,
                'ket' => $this->request->getPost('ket'),
            ];
            $this->ModelBaner->update($id_baner, $data);
        } else {
            // jika logo diganti
            $baner = $this->ModelBaner->where('id_baner', $id_baner)->get()->getRowArray();
            if ($baner['baner'] != "") {
                unlink('./foto_baner/' . $baner['baner']);
            }
            $nama_file = $file->getRandomName();
            $data = [
                'id_baner' => $id_baner,
                'ket' => $this->request->getPost('ket'),
                'baner' => $nama_file,
            ];
            $file->move('foto_baner/', $nama_file);
            $this->ModelBaner->update($id_baner, $data);
        }
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('baner');
    }

    public function deleteData($id_baner)
    {
        $baner = $this->ModelBaner->where('id_baner', $id_baner)->get()->getRowArray();
        if ($baner['baner'] != "") {
            unlink('./foto_baner/' . $baner['baner']);
        }
        $data = [
            'id_baner' => $id_baner,
        ];
        $this->ModelBaner->delete($data);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('baner');
    }
}
