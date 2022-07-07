<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelTa;
use App\Models\ModelSiswa;
use App\Models\ModelJurusan;

class Pendaftaran extends BaseController
{
    public function __construct()
    {
        helper('form');
        $this->ModelTa = new ModelTa();
        $this->ModelSiswa = new ModelSiswa();
        $this->ModelJurusan = new ModelJurusan();
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Pendaftaran',
            'ta' => $this->ModelTa->statusTa(),
            'jurusan' => $this->ModelJurusan->findAll(),
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
            'jk' => [
                'label' => 'Jenis Kelamin',
                'rules'  => 'required',
                'errors' => [
                    'required' => '* Wajib Diisi !!',
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
            $no_pendaftaran = $this->ModelSiswa->noPendaftaran();
            $pw = sprintf("%02d", $bulan);
            $data = [
                'no_pendaftaran' => $no_pendaftaran,
                'tgl_pendaftaran' => date('Y-m-d'),
                'id_jurusan' => $this->request->getPost('id_jurusan'),
                'nisn' => $this->request->getPost('nisn'),
                'nama_lengkap' => $this->request->getPost('nama_lengkap'),
                'jk' => $this->request->getPost('jk'),
                'tempat_lahir' => $this->request->getPost('tempat_lahir'),
                'tgl_lahir' => $tahun . '-' . $bulan . '-' . $tanggal,
                'password' => $pw . $tahun,
            ];
            $this->ModelSiswa->insert($data);
            session()->setFlashdata('pesan', 'Berhasil mendaftar, silahkan login untuk melengkapi data!!');
            return redirect()->to('/pendaftaran');
        } else {
            //jika ada validasi 
            $validation = \Config\Services::validation();
            return redirect()->to('/pendaftaran')->withInput()->with('validation', $validation);
        }
    }
}
