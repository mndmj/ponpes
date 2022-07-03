<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelSiswa;
use App\Models\ModelJalurMasuk;
use App\Models\ModelAgama;
use App\Models\ModelStatusDiKeluarga;

class Siswa extends BaseController
{
    public function __construct()
    {
        $this->ModelSiswa = new ModelSiswa();
        $this->ModelJalurMasuk = new ModelJalurMasuk();
        $this->ModelAgama = new ModelAgama();
        $this->ModelStatusDiKeluarga = new ModelStatusDiKeluarga();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Siswa',
            'siswa' => $this->ModelSiswa->getBiodataSiswa(),
            'jalur' => $this->ModelJalurMasuk->findAll(),
            'agama' => $this->ModelAgama->findAll(),
            'status' => $this->ModelStatusDiKeluarga->findAll(),
            'validation' => \Config\Services::validation(),
        ];
        return view('siswa/view_formulir', $data);
    }

    public function updatePendaftaran($id_siswa)
    {
        $data = [
            'id_siswa' => $id_siswa,
            'id_jalur_masuk' => $this->request->getPost('id_jalur_masuk'),
        ];

        $this->ModelSiswa->update($id_siswa, $data);

        session()->setFlashdata('pesan', 'Data pendaftaran berhasil diedit..!!');
        return redirect()->to('siswa');
    }

    public function updateFoto($id_siswa)
    {
        if ($this->validate([
            'foto' => [
                'label' => 'foto',
                'rules' => 'max_size[foto,1024]',
                'errors' => [
                    'max_size' => 'Ukuran {field} max 1 Mb..!!',
                ]
            ]
        ])) {
            // hapus foto lama
            $siswa = $this->ModelSiswa->find($id_siswa);
            if ($siswa['foto'] != "" or $siswa['foto'] != null) {
                unlink('./foto/' . $siswa['foto']);
            }

            $file = $this->request->getFile('foto');
            $nama_file = $file->getRandomName();
            $data = [
                'id_siswa' => $id_siswa,
                'foto' => $nama_file,
            ];
            // Upload file foto
            $file->move('foto/', $nama_file);
            $this->ModelSiswa->update($id_siswa, $data);
            session()->setFlashdata('pesan', 'Foto berhasil diedit..!!');
            return redirect()->to('siswa');
        } else {
            // tidak valid
            $validation = \Config\Services::validation();
            return redirect()->to('siswa')->withInput()->with('validation', $validation);
        }
    }

    public function updateIdentitasPesertaDidik($id_siswa)
    {
        //
        $data = [
            'id_siswa' => $id_siswa,
            'nama_lengkap' => $this->request->getPost('nama_lengkap'),
            'tempat_lahir' => $this->request->getPost('tempat_lahir'),
            'nik' => $this->request->getPost('nik'),
            'id_status' => $this->request->getPost('id_status'),
            'jml_saudara' => $this->request->getPost('jml_saudara'),
            'tgl_lahir' => $this->request->getPost('tgl_lahir'),
            'jk' => $this->request->getPost('jk'),
            'agama' => $this->request->getPost('agama'),
            'no_telpon' => $this->request->getPost('no_telpon'),
        ];

        $this->ModelSiswa->update($id_siswa, $data);
        session()->setFlashdata('pesan', 'Identitas peserta didik berhasil diedit..!!');
        return redirect()->to('siswa');
    }
}
