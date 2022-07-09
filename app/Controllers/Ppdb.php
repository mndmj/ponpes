<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelPpdb;
use App\Models\ModelTa;
use App\Models\ModelAdmin;

class Ppdb extends BaseController
{
    public function __construct()
    {
        $this->ModelPpdb = new ModelPpdb();
        $this->ModelTa = new ModelTa();
        $this->ModelAdmin = new ModelAdmin();
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Pendaftaran Masuk',
            'ppdb' => $this->ModelPpdb->getPpdbMasuk(),
        ];
        return view('admin/ppdb/view_masuk', $data);
    }

    public function listDiterima()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Pendaftaran Diterima',
            'ppdb' => $this->ModelPpdb->getPpdbDiterima(),
        ];
        return view('admin/ppdb/view_diterima', $data);
    }

    public function listDitolak()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Pendaftaran Ditolak',
            'ppdb' => $this->ModelPpdb->getPpdbDitolak(),
        ];
        return view('admin/ppdb/view_ditolak', $data);
    }

    public function detailData($id_siswa)
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Detail Data Siswa',
            'siswa' => $this->ModelPpdb->detailData($id_siswa),
            'berkas' => $this->ModelPpdb->lampiran($id_siswa),
        ];
        return view('admin/ppdb/view_detail', $data);
    }

    public function diterima($id_siswa)
    {
        $data = [
            'id_siswa' => $id_siswa,
            'stat_ppdb' => '1',
        ];
        $this->ModelPpdb->update($id_siswa, $data);
        session()->setFlashdata('terima', 'Siswa berhasil diterima.');
        return redirect()->to(base_url('ppdb'));
    }

    public function ditolak($id_siswa)
    {
        $data = [
            'id_siswa' => $id_siswa,
            'stat_ppdb' => '2',
        ];
        $this->ModelPpdb->update($id_siswa, $data);
        session()->setFlashdata('tolak', 'Siswa telah ditolak.');
        return redirect()->to(base_url('ppdb'));
    }

    public function laporan()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Laporan Kelulusan',
            'ta' => $this->ModelTa->findAll(),
        ];
        return view('admin/ppdb/view_laporan', $data);
    }

    public function cetakLaporan($tahun)
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Laporan Kelulusan',
            'tahun' => $tahun,
            'siswa' => $this->ModelPpdb->getDataLaporan($tahun),
            'setting' => $this->ModelAdmin->detailSetting(),
        ];
        return view('admin/ppdb/view_cetak_laporan', $data);
    }
}
