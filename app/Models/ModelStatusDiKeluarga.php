<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelStatusDiKeluarga extends Model
{
    protected $table      = 'tbl_status_keluarga';
    protected $primaryKey = 'id_status';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = ['id_status', 'status'];
}
