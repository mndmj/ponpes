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
        'id_siswa', 'no_pendaftaran', 'tgl_pendaftaran', 'nisn', 'nama_lengkap', 'jk', 'tempat_lahir', 'tgl_lahir', 'password'
    ];

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
