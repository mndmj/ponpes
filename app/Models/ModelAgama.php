<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelAgama extends Model
{
    protected $table      = 'tbl_agama';
    protected $primaryKey = 'id_agama';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = ['id_agama', 'agama'];
}
