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
use App\Models\ModelLampiran;
use App\Models\ModelJurusan;

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
        $this->ModelLampiran = new ModelLampiran();
        $this->ModelJurusan = new ModelJurusan();
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
            'berkas' => $this->ModelSiswa->lampiran(),
            'lampiran' => $this->ModelLampiran->findAll(),
            'jurusan' => $this->ModelJurusan->findAll(),
            'validation' => \Config\Services::validation(),
        ];
        return view('siswa/view_formulir', $data);
    }

    public function updatePendaftaran($id_siswa)
    {
        $data = [
            'id_siswa' => $id_siswa,
            'id_jalur_masuk' => $this->request->getPost('id_jalur_masuk'),
            'id_jurusan' => $this->request->getPost('id_jurusan'),
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

    public function updateDataWali($id_siswa)
    {
        $data = [
            'id_siswa' => $id_siswa,
            'nama_wali' => $this->request->getPost('nama_wali'),
            'pekerjaan_wali' => $this->request->getPost('pekerjaan_wali'),
            'pendidikan_wali' => $this->request->getPost('pendidikan_wali'),
            'agama_wali' => $this->request->getPost('agama_wali'),
            'no_telpon_wali' => $this->request->getPost('no_telpon_wali'),
            'alamat_wali' => $this->request->getPost('alamat_wali'),
        ];

        $this->ModelSiswa->update($id_siswa, $data);
        session()->setFlashdata('pesan', 'Data Wali berhasil diedit..!!');
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

    public function updateDataAlamatOrtu($id_siswa)
    {
        $data = [
            'id_siswa' => $id_siswa,
            'alamat_ortu' => $this->request->getPost('alamat_ortu'),
        ];

        $this->ModelSiswa->update($id_siswa, $data);
        session()->setFlashdata('pesan', 'Data alamat Orang Tua berhasil diedit..!!');
        return redirect()->to('siswa');
    }

    public function updateSekolahAsal($id_siswa)
    {
        $data = [
            'id_siswa' => $id_siswa,
            'nama_sekolah_asal' => $this->request->getPost('nama_sekolah_asal'),
            'tahun_lulus' => $this->request->getPost('tahun_lulus'),
            'no_ijazah' => $this->request->getPost('no_ijazah'),
            'no_skhun' => $this->request->getPost('no_skhun'),
        ];

        $this->ModelSiswa->update($id_siswa, $data);
        session()->setFlashdata('pesan', 'Data sekolah asal berhasil diedit..!!');
        return redirect()->to('siswa');
    }

    public function addBerkas($id_siswa)
    {
        if ($this->validate([
            'id_lampiran' => [
                'label' => 'Lampiran',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} belum dipilih..!!',
                ]
            ],
            'berkas' => [
                'label' => 'Berkas',
                'rules' => 'max_size[berkas,5120]|ext_in[berkas,pdf]',
                'errors' => [
                    'max_size' => 'Ukuran {field} max 1 Mb..!!',
                    'ext_in' => '{field} harus PDF..!!'
                ]
            ]
        ])) {
            $berkas = $this->request->getFile('berkas');
            $nama_file = $berkas->getRandomName();

            $data = [
                'id_siswa' => $id_siswa,
                'id_lampiran' => $this->request->getPost('id_lampiran'),
                'ket' => $this->request->getPost('ket'),
                'berkas' => $nama_file,
            ];

            // Upload file foto
            $berkas->move('berkas/', $nama_file);
            $this->ModelSiswa->addBerkas($data);
            session()->setFlashdata('pesan', 'Berkas berhasil diupload..!!');
            return redirect()->to('siswa');
        } else {
            session()->setFlashdata('errors', \Config\Services::validation()->getErrors());
            return redirect()->to(base_url('siswa'));
        }
    }

    public function deleteBerkas($id_berkas)
    {
        $berkas = $this->ModelSiswa->detailBerkas($id_berkas);
        if ($berkas['berkas'] != null) {
            unlink('./berkas/' . $berkas['berkas']);
        }
        $data = [
            'id_berkas' => $id_berkas,
        ];
        $this->ModelSiswa->deleteBerkas($data);
        session()->setFlashdata('pesan', 'Berkas berhasil dihapus..!!');
        return redirect()->to(base_url('siswa'));
    }

    public function apply($id_siswa)
    {
        $data = [
            'id_siswa' => $id_siswa,
            'stat_pendaftaran' => '1',
        ];
        $this->ModelSiswa->update($id_siswa, $data);
        session()->setFlashdata('pesan', 'Pendaftaran berhasil di kirim..!!');
        return redirect()->to(base_url('siswa'));
    }
}
