<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelPekerjaan extends Model
{
    protected $table      = 'tbl_pekerjaan';
    protected $primaryKey = 'id_pekerjaan';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = ['id_pekerjaan', 'pekerjaan'];
}
