<?php

namespace App\Models;

use CodeIgniter\Model;
use LDAP\Result;

class ModelAuth extends Model
{
    public function login_user($email, $password)
    {
        return $this->db->table('tbl_user')->where(
            [
                'email' => $email,
                'password' => $password
            ]
        )->get()->getRowArray();
    }

    public function login_siswa($nisn, $password)
    {
        return $this->db->table('tbl_siswa')->where(
            [
                'nisn' => $nisn,
                'password' => $password
            ]
        )->get()->getRowArray();
    }
}
