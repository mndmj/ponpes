<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelAdmin;

class Admin extends BaseController
{
    public function __construct()
    {
        helper('form');
        $this->ModelAdmin = new ModelAdmin();
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Admin'
        ];
        return view('admin/view_admin', $data);
    }

    public function setting()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Setting',
            'setting' => $this->ModelAdmin->detailSetting(),
        ];
        return view('admin/view_setting', $data);
    }

    public function saveSetting()
    {
        // jika logo tidak diganti
        $file = $this->request->getFile('logo');
        if ($file->getError() == 4) {
            $data = [
                'nama_sekolah' => $this->request->getPost('nama_sekolah'),
                'alamat' => $this->request->getPost('alamat'),
                'kecamatan' => $this->request->getPost('kecamatan'),
                'kabupaten' => $this->request->getPost('kecamatan'),
                'provinsi' => $this->request->getPost('provinsi'),
                'no_telp' => $this->request->getPost('no_telp'),
                'email' => $this->request->getPost('email'),
                'web' => $this->request->getPost('web'),
                'deskripsi' => $this->request->getPost('deskripsi'),
            ];
            $this->ModelAdmin->saveSetting($data);
        } else {
            // jika logo diganti
            $setting = $this->ModelAdmin->detailSetting();
            if ($setting['logo'] != "") {
                unlink('./logo/' . $setting['logo']);
            }
            $nama_file = $file->getRandomName();
            $data = [
                'nama_sekolah' => $this->request->getPost('nama_sekolah'),
                'alamat' => $this->request->getPost('alamat'),
                'kecamatan' => $this->request->getPost('kecamatan'),
                'kabupaten' => $this->request->getPost('kecamatan'),
                'provinsi' => $this->request->getPost('provinsi'),
                'no_telp' => $this->request->getPost('no_telp'),
                'email' => $this->request->getPost('email'),
                'web' => $this->request->getPost('web'),
                'deskripsi' => $this->request->getPost('deskripsi'),
                'logo' => $nama_file,
            ];
            $file->move('logo/', $nama_file);
            $this->ModelAdmin->saveSetting($data);
        }
        session()->setFlashdata('pesan', 'Data berhasil diubah !!!');
        return redirect()->to('/admin/setting');
    }
}
