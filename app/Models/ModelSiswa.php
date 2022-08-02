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
        'id_siswa', 'no_pendaftaran', 'tgl_pendaftaran', 'tahun', 'id_jurusan',
        'nisn', 'nama_lengkap', 'jk', 'tempat_lahir', 'tgl_lahir', 'password', 'id_jalur_masuk', 'foto', 'nik', 'id_agama', 'id_status', 'jml_saudara', 'no_telpon',
        'nik_ayah', 'nama_ayah', 'pendidikan_ayah', 'penghasilan_ayah', 'pekerjaan_ayah', 'agama_ayah', 'umur_ayah', 'no_telpon_ayah',
        'nik_ibu', 'nama_ibu', 'pendidikan_ibu', 'penghasilan_ibu', 'pekerjaan_ibu', 'agama_ibu', 'umur_ibu', 'no_telpon_ibu',
        'nama_wali', 'pekerjaan_wali', 'pendidikan_wali', 'agama_wali', 'no_telpon_wali', 'alamat_wali', 'alamat_ortu',
        'id_provinsi', 'id_kabupaten', 'id_kecamatan', 'alamat',
        'nama_sekolah_asal', 'tahun_lulus', 'no_ijazah', 'no_skhun',
        'stat_pendaftaran', 'stat_ppdb',
        'email', 'token', 'status_validasi',
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
            ->join('tbl_provinsi', 'tbl_provinsi.id_provinsi = tbl_siswa.id_provinsi', 'left')
            ->join('tbl_kabupaten', 'tbl_kabupaten.id_kabupaten = tbl_siswa.id_kabupaten', 'left')
            ->join('tbl_kecamatan', 'tbl_kecamatan.id_kecamatan = tbl_siswa.id_kecamatan', 'left')
            ->join('tbl_jurusan', 'tbl_jurusan.id_jurusan = tbl_siswa.id_jurusan', 'left')
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

    public function lampiran()
    {
        return $this->db->table('tbl_berkas')
            ->join('tbl_lampiran', 'tbl_lampiran.id_lampiran = tbl_berkas.id_lampiran', 'left')
            ->where('tbl_berkas.id_siswa', session()->get('id_siswa'))
            ->get()->getResultArray();
    }

    public function addBerkas($data)
    {
        $this->db->table('tbl_berkas')->insert($data);
    }

    public function deleteBerkas($data)
    {
        $this->db->table('tbl_berkas')
            ->where('id_berkas', $data['id_berkas'])
            ->delete($data);
    }

    public function detailBerkas($id_berkas)
    {
        return $this->db->table('tbl_berkas')
            ->where('id_berkas', $id_berkas)
            ->get()
            ->getRowArray();
    }
}
