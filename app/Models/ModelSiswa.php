<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelSiswa extends Model
{
    protected $table      = 'tbl_siswa';
    protected $primaryKey = 'id_siswa';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = [
        'id_siswa', 'no_pendaftaran', 'tgl_pendaftaran', 'nisn', 'nama_lengkap', 'jk', 'tempat_lahir', 'tgl_lahir', 'password', 'id_jalur_masuk', 'foto', 'nik', 'id_agama', 'id_status', 'jml_saudara', 'no_telpon'
    ];

    public function getBiodataSiswa()
    {
        return $this->table('tbl_siswa')
            ->where(
                'id_siswa',
                session()->get('id_siswa')
            )
            ->join('tbl_jalur_masuk', 'tbl_jalur_masuk.id_jalur_masuk = tbl_siswa.id_jalur_masuk', 'left')
            ->join('tbl_agama', 'tbl_agama.id_agama = tbl_siswa.id_agama', 'left')
            ->join('tbl_status_keluarga', 'tbl_status_keluarga.id_status = tbl_siswa.id_status', 'left')
            ->get()->getRowArray();
    }

    public function noPendaftaran()
    {
        $kode = $this->select('RIGHT(no_pendaftaran,4) as no_pendaftaran', false)
            ->select('LEFT(no_pendaftaran,8) as tanggal', false)
            ->orderBy('no_pendaftaran', 'DESC')
            ->limit(1)->get()->getRowArray();

        if (isset($kode['no_pendaftaran']) == 0) {
            $no = 1;
        } else {
            if ($kode['tanggal'] == date('Ymd')) {
                $no = intval($kode['no_pendaftaran'] + 1);
            } else {
                $no = 1;
            }
        }

        $tgl = date('Ymd');
        $batas = str_pad($no, 4, '0', STR_PAD_LEFT);
        $no_pendaftaran = $tgl . $batas;
        return $no_pendaftaran;
    }
}
