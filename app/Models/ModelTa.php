<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelTa extends Model
{
    protected $table      = 'tbl_ta';
    protected $primaryKey = 'id_ta';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = ['id_ta', 'ta', 'tahun', 'status'];

    public function resetStatus()
    {
        $this->db->table('tbl_ta')
            ->update(['status' => 0]);
    }

    public function statusTa()
    {
        return $this->db->table('tbl_ta')
            ->where('status', '1')
            ->get()
            ->getRowArray();
    }
}
