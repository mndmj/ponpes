<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Ppdb extends BaseController
{
    public function __construct()
    {
        helper('form');
    }
    public function pendaftaran()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Pendaftaran'
        ];
        return view('view_pendaftaran', $data);
    }
}
