<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelTa;
use App\Models\ModelSiswa;

class Ppdb extends BaseController
{
    public function __construct()
    {
        helper('form');
        $this->ModelTa = new ModelTa();
        $this->ModelSiswa = new ModelSiswa();
    }

    public function pendaftaran()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Pendaftaran',
            'ta' => $this->ModelTa->statusTa(),
            'validation' => \Config\Services::validation(),
        ];
        return view('view_pendaftaran', $data);
    }

    public function simpanPendaftaran()
    {
        if ($this->validate([
            'nisn' => [
                'label' => 'NISN',
                'rules'  => 'required|max_length[10]|is_unique[tbl_siswa.nisn]',
                'errors' => [
                    'required' => '*{field} Wajib Diisi !!',
                    'max_length' => '*{field} MAX 10 karakter !!',
                    'is_unique' => '*{field} sudah terdaftar !!',
                ],
            ],
            'nama_lengkap' => [
                'label' => 'Nama Lengkap',
                'rules'  => 'required',
                'errors' => [
                    'required' => '*{field} Wajib Diisi !!',
                ],
            ],
            'tempat_lahir' => [
                'label' => 'Tempat Lahir',
                'rules'  => 'required',
                'errors' => [
                    'required' => '*{field} Wajib Diisi !!',
                ],
            ],
            'tanggal' => [
                'rules'  => 'required',
                'errors' => [
                    'required' => '*',
                ],
            ],
            'bulan' => [
                'rules'  => 'required',
                'errors' => [
                    'required' => '*',
                ],
            ],
            'tahun' => [
                'rules'  => 'required',
                'errors' => [
                    'required' => '*',
                ],
            ],
        ])) {
            //jika tidak ada validasi maka simpan data
            $tahun = $this->request->getPost('tahun');
            $bulan = $this->request->getPost('bulan');
            $tanggal = $this->request->getPost('tanggal');
            $pw = sprintf("%02d", $bulan);
            $data = [
                'nisn' => $this->request->getPost('nisn'),
                'nama_lengkap' => $this->request->getPost('nama_lengkap'),
                'tempat_lahir' => $this->request->getPost('tempat_lahir'),
                'tgl_lahir' => $tahun . '-' . $bulan . '-' . $tanggal,
                'password' => $pw . $tahun,
            ];
            $this->ModelSiswa->insert($data);
            session()->setFlashdata('pesan', 'Berhasil mendaftar, silahkan login untuk melengkapi data!!');
            return redirect()->to('/ppdb/pendaftaran');
        } else {
            //jika ada validasi 
            $validation = \Config\Services::validation();
            return redirect()->to('/ppdb/pendaftaran')->withInput()->with('validation', $validation);
        }
    }
}
