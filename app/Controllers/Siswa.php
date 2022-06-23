<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Siswa extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Siswa'
        ];
        return view('siswa/view_dashboard', $data);
    }
}
