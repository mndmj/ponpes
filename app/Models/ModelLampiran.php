<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelLampiran extends Model
{
    protected $table      = 'tbl_lampiran';
    protected $primaryKey = 'id_lampiran';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = ['id_lampiran', 'lampiran'];
}
