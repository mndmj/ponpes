<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelSiswa extends Model
{
    protected $table      = 'tbl_siswa';
    protected $primaryKey = 'id_siswa';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = ['id_siswa', 'nisn', 'nama_lengkap', 'tempat_lahir', 'tgl_lahir', 'password'];
}
