<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelBaner extends Model
{
    protected $table      = 'tbl_baner';
    protected $primaryKey = 'id_baner';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = ['id_baner', 'ket', 'baner'];
}
