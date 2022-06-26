<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelJalurMasuk extends Model
{
    protected $table      = 'tbl_jalur_masuk';
    protected $primaryKey = 'id_jalur_masuk';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = ['id_jalur_masuk', 'jalur_masuk', 'kuota'];
}
