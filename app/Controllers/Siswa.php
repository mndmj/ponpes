<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelSiswa;
use App\Models\ModelJalurMasuk;
use App\Models\ModelAgama;
use App\Models\ModelStatusDiKeluarga;
use App\Models\ModelPekerjaan;
use App\Models\ModelPendidikan;
use App\Models\ModelPenghasilan;
use App\Models\ModelWilayah;

class Siswa extends BaseController
{
    public function __construct()
    {
        $this->ModelSiswa = new ModelSiswa();
        $this->ModelJalurMasuk = new ModelJalurMasuk();
        $this->ModelAgama = new ModelAgama();
        $this->ModelStatusDiKeluarga = new ModelStatusDiKeluarga();
        $this->ModelPekerjaan = new ModelPekerjaan();
        $this->ModelPendidikan = new ModelPendidikan();
        $this->ModelPenghasilan = new ModelPenghasilan();
        $this->ModelWilayah = new ModelWilayah();
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
            'pekerjaan' => $this->ModelPekerjaan->findAll(),
            'pendidikan' => $this->ModelPendidikan->findAll(),
            'penghasilan' => $this->ModelPenghasilan->findAll(),
            'provinsi' => $this->ModelWilayah->getProvinsi(),
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

    public function updateDataAyah($id_siswa)
    {
        $data = [
            'id_siswa' => $id_siswa,
            'nik_ayah' => $this->request->getPost('nik_ayah'),
            'nama_ayah' => $this->request->getPost('nama_ayah'),
            'pekerjaan_ayah' => $this->request->getPost('pekerjaan_ayah'),
            'pendidikan_ayah' => $this->request->getPost('pendidikan_ayah'),
            'penghasilan_ayah' => $this->request->getPost('penghasilan_ayah'),
            'agama_ayah' => $this->request->getPost('agama_ayah'),
            'umur_ayah' => $this->request->getPost('umur_ayah'),
            'no_telpon_ayah' => $this->request->getPost('no_telpon_ayah'),
        ];

        $this->ModelSiswa->update($id_siswa, $data);
        session()->setFlashdata('pesan', 'Data Ayah berhasil diedit..!!');
        return redirect()->to('siswa');
    }

    public function updateDataIbu($id_siswa)
    {
        $data = [
            'id_siswa' => $id_siswa,
            'nik_ibu' => $this->request->getPost('nik_ibu'),
            'nama_ibu' => $this->request->getPost('nama_ibu'),
            'pekerjaan_ibu' => $this->request->getPost('pekerjaan_ibu'),
            'pendidikan_ibu' => $this->request->getPost('pendidikan_ibu'),
            'penghasilan_ibu' => $this->request->getPost('penghasilan_ibu'),
            'agama_ibu' => $this->request->getPost('agama_ibu'),
            'umur_ibu' => $this->request->getPost('umur_ibu'),
            'no_telpon_ibu' => $this->request->getPost('no_telpon_ibu'),
        ];

        $this->ModelSiswa->update($id_siswa, $data);
        session()->setFlashdata('pesan', 'Data Ibu berhasil diedit..!!');
        return redirect()->to('siswa');
    }

    public function updateDataAlamat($id_siswa)
    {
        $data = [
            'id_siswa' => $id_siswa,
            'id_provinsi' => $this->request->getPost('id_provinsi'),
            'id_kabupaten' => $this->request->getPost('id_kabupaten'),
            'id_kecamatan' => $this->request->getPost('id_kecamatan'),
            'alamat' => $this->request->getPost('alamat'),
        ];

        $this->ModelSiswa->update($id_siswa, $data);
        session()->setFlashdata('pesan', 'Data alamat berhasil diedit..!!');
        return redirect()->to('siswa');
    }
}
