<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelJurusan extends Model
{
    protected $table      = 'tbl_jurusan';
    protected $primaryKey = 'id_jurusan';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = ['id_jurusan', 'jurusan'];
}
