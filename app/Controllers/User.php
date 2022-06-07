<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelUser;

class User extends BaseController
{
    public function __construct()
    {
        $this->ModelUser = new ModelUser();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'User',
            'user' => $this->ModelUser->findAll(),
        ];
        return view('admin/view_user', $data);
    }

    public function insertData()
    {
        $file = $this->request->getFile('foto');
        $nama_file = $file->getRandomName();
        $data = [
            'nama_user' => $this->request->getPost('nama_user'),
            'email' => $this->request->getPost('email'),
            'password' => $this->request->getPost('password'),
            'foto' => $nama_file
        ];
        // Upload file foto
        $file->move('foto/', $nama_file);

        $this->ModelUser->insert($data);
        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('user');
    }

    public function editData($id_user)
    {
        $file = $this->request->getFile('foto');
        if ($file->getError() == 4) {
            $data = [
                'nama_user' => $this->request->getPost('nama_user'),
                'email' => $this->request->getPost('email'),
                'password' => $this->request->getPost('password'),
            ];
            $this->ModelUser->update($id_user, $data);
        } else {
            $user = $this->ModelUser->find($id_user);
            if ($user['foto'] != "") {
                unlink('./foto/' . $user['foto']);
            }
            $nama_file = $file->getRandomName();
            $data = [
                'nama_user' => $this->request->getPost('nama_user'),
                'email' => $this->request->getPost('email'),
                'password' => $this->request->getPost('password'),
                'foto' => $nama_file
            ];
            // Upload file foto
            $file->move('foto/', $nama_file);
            $this->ModelUser->update($id_user, $data);
        }
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('user');
    }

    public function deleteData($id_user)
    {
        $user = $this->ModelUser->find($id_user);
        if ($user['foto'] != "") {
            unlink('./foto/' . $user['foto']);
        }

        $this->ModelUser->delete($id_user);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('user');
    }
}
