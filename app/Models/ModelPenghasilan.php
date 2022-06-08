<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelPenghasilan extends Model
{
    protected $table      = 'tbl_penghasilan';
    protected $primaryKey = 'id_penghasilan';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = ['id_penghasilan', 'penghasilan'];
}
