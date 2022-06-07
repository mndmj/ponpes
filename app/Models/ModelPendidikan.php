<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelPendidikan extends Model
{
    protected $table      = 'tbl_pendidikan';
    protected $primaryKey = 'id_pendidikan';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = ['id_pendidikan', 'pendidikan'];
}
